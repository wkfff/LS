[dsData]
SELECT po.id, po.DOC_NUMBER, po.DOC_DATE, dp.Recieve_Date AS EXEC_DATE, po.payer_name, po.payer_inn, po.payer_kpp, nvl(po.SUMMA, po.DOC_SUMMA) summa, 
    CASE WHEN po.TypeSYSNAME = 'PaymentOrderNonIDKBK' THEN '' ELSE po.kbk END AS kbk, 
    CASE WHEN po.TypeSYSNAME = 'PaymentOrderNonIDDest' THEN '' ELSE po.DestCustomsCode END AS DestCustomsCode, 
    po.NOTE,
 CASE WHEN substr( po.DestCustomsCode, 1, 3) = '100' THEN substr(po.DestCustomsCode, 1, 5)||'000' 
      ELSE substr( po.DestCustomsCode, 1, 3)||'00000' END AS DEST
FROM fdc_po_credit_lst_all po, fdc_doc_pack_payments_lst dp, fdc_rel_pack_docs_lst r
WHERE dp.ID = r.Object_ID
  AND r.Rel_Object_ID = po.ID
  AND dp.Sender_Soft_Code = 'LSFTS'
  AND dp.Recieve_Date BETWEEN :DATE_FROM AND :DATE_TO
   AND ('���' = :INN OR po.payer_inn = :INN )
   AND ('���' = :FILTER_TO OR decode( substr(:FILTER_TO, 1, 3), '100', 
                                      substr(po.DestCustomsCode,1,5)||'000',  
                                      substr(po.DestCustomsCode,1,3)||'00000') = :FILTER_TO
       )                                             
   AND NOT EXISTS ( SELECT 0
                      FROM fdc_payment_order_non_id n
                     WHERE po.ID = n.ID
                       AND n.payment_order_id IS NOT NULL )
ORDER BY DEST, dp.Recieve_Date                       
