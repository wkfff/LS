�
 TSEQUENCEFIELDFORM 0+
  TPF0TSequenceFieldFormSequenceFieldFormLeftTop� BorderStylebsDialogCaptionSequenceFieldClientHeight� ClientWidthPFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PositionpoScreenCenter
OnActivateFormActivateOnCreate
FormCreatePixelsPerInchx
TextHeight TLabelLabel1LeftTopWidthaHeight	AlignmenttaRightJustifyAutoSizeCaption	&SequenceFocusControlSequenceListBox  TLabelLabel2LeftTop4WidthaHeight	AlignmenttaRightJustifyAutoSizeCaption&FieldFocusControlFieldListBox  TButtonOKBtnLeftTop� WidthKHeightCaptionOKDefault	ModalResultTabOrder  TButton	CancelBtnLeftdTop� WidthKHeightCancel	CaptionCancelModalResultTabOrder  	TComboBoxSequenceListBoxLefttTopWidth� Height
ItemHeightTabOrder TextSequenceListBoxOnChange
EditChange
OnDropDownDropDownList  	TComboBoxFieldListBoxLefttTop0Width� Height
ItemHeightTabOrderTextFieldListBoxOnChange
EditChange  TRadioGroup
ApplyGroupLeftTopTWidth9HeightaCaption&Apply	ItemIndex Items.StringsOn New RecordOn Post	On Server TabOrderOnClick
EditChange  TButtonHelpBtnLeft� Top� WidthKHeightCaptionHelpTabOrderOnClickHelpBtnClick  TOracleLogonSequenceLogonSessionSequenceSessionRetriesOptionsldAuto
ldDatabaseldDatabaseList AliasDropDownCountHistorySizeHistoryWithPasswordLeft� Toph  TOracleQuerySequenceQuerySQL.StringsXselect decode(sequence_owner, user, null, sequence_owner) sequence_owner, sequence_name   from all_sequencesK order by decode(sequence_owner, null, 0, 1), sequence_owner, sequence_name SessionSequenceSession
ReadBufferOptimize	DebugCursor	crDefaultStringFieldsOnlyThreadedThreadSynchronized	
ScrollableLeft Toph  TOracleSessionSequenceSessionCursorcrHourGlassDesignConnection	ConnectAscaNormal
ThreadSafePreferences.FloatPrecision Preferences.IntegerPrecision Preferences.SmallIntPrecision�Preferences.UseOCI7Preferences.ConvertCRLF	Preferences.TrimStringFields	Preferences.MaxStringFieldSize Preferences.ZeroDateIsNull	Preferences.NullLOBIsEmptyPreferences.NullObjectIsEmptyPreferences.TemporaryLOBtlCachePreferences.TimestampAsStringPoolingspNone
MTSOptions
moImplicitmoUniqueServer 	ConnectedRollbackOnDisconnect	NullValuenvUnAssignedSQLTracestUnchangedOptimizerGoalogUnchangedIsolationLevelilUnchangedBytesPerCharacterbc1ByteStatementCacheStatementCacheSizeLeft Toph   