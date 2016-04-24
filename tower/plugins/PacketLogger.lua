-- //[GS_T25] 'GS3'  GS T2.5 (T2 Freya) protocol 216 (..)
-- [client]
-- 00=Logout:
-- 01=AttackRequest:d(ObjectID)d(OrigX)d(OrigY)d(OrigZ)c(AttackClick)
-- 03=ReqStartPledgeWar:s(PledgeName)
-- 04=ReqReplyStartPledgeWar:s(RequestorName)d(Answer)
-- 05=ReqStopPledgeWar:s(PledgeName)
-- 06=ReqReplyStopPledgeWar:s(RequestorName)d(Answer)
-- 07=ReqSurrenderPledgeWar:s(PledgeName)
-- 08=ReqReplySurrenderPledgeWar:s(RequestorName)d(Answer)
-- 09=ReqSetPledgeCrest:b(CrestData)
-- 0B=RequestGiveNickName:s(Target)s(Title)
-- 0C=CharacterCreate:s(Name)d(Race)d(Sex)d(ClassID:Get.ClassID)d(INT)d(STR)d(CON)d(MEN)d(DEX)d(WIT)d(HairStyle)d(HairColor)d(Face)
-- 0D=CharacterDelete:d(CharSlot)
-- 0E=ProtocolVersion:d(Version)z(0256fixed)d(:)
-- 0F=MoveBackwardToLocation:d(targetX)d(targetY)d(targetZ)d(originX)d(originY)d(originZ)d(moveByMouse)
-- 11=EnterWorld:z(0032)z(0016)z(0032)d(d)d(Trace0:Get.FIP)d(Trace1:Get.FIP)d(Trace2:Get.FIP)d(Trace3:Get.FIP)d(Trace4:Get.FIP)
-- 12=CharSelected:d(CharSlot)h(:)d(:)d(:)d(:)
-- 13=NewCharacter:
-- 14=RequestItemList:
-- 16=RequestUnEquipItem:d(Slot)
-- 17=RequestDropItem:d(ObjectID)q(Count)d(X)d(Y)d(Z)
-- 19=UseItem:d(ObjectID)d(ctrlPressed)
-- 1A=TradeRequest:d(ObjectID)
-- 1B=AddTradeItem:d(TradeID)d(ObjectID)q(Count)
-- 1C=TradeDone:d(Response)
-- 1F=Action:d(ObjectID)d(OrigX)d(OrigY)d(OrigZ)c(ActionID)
-- 22=RequestLinkHtml:s(link)
-- 23=ReqBypassToServer:s(Command)
-- 24=ReqBBSwrite:s(URL)s(Arg1)s(Arg2)s(Arg3)s(Arg4)s(Arg5)
-- 26=ReqJoinPledge:d(Target)d(PledgeType)
-- 27=ReqAnswerJoinPledge:d(Answer)
-- 28=ReqWithdrawalPledge:
-- 29=ReqOustPledgeMember:s(Target)
-- 2B=ReqAuthLogin:s(LoginName)d(PlayKey2)d(PlayKey1)d(LoginKey1)d(LoginKey2)d(:)
-- 2C=ReqGetItemFromPet:d(ObjectID)q(Amount)d(0)
-- 2E=ReqAllyInfo:
-- 2F=ReqCrystallizeItem:d(ObjectID)q(Count)
-- 30=ReqPrivateStoreManageSell:
-- 31=SetPrivateStoreListSell:d(isPackage)d(count:Loop.01.0003)d(ObjectID)q(Count)q(Price)
-- 32=AttackRequest:d(ObjectID)d(OrigX)d(OrigY)d(OrigZ)c(AttackClick)
-- 34=RequestSocialAction:d(Action:Get.F9)
-- 35=ChangeMoveType2:d(TypeRun)
-- 36=ChangeWaitType2:d(TypeStand)
-- 37=RequestSellItem:d(ListID)d(count:Loop.01.0003)d(ObjectID)d(ItemID:Get.F0)q(Count)
-- 39=RequestMagicSkillUse:d(skillID:Get.Skill)d(CtrlPressed)c(ShiftPressed)
-- 3A=Appearing:
-- 3B=SendWareHouseDepositList:d(count:Loop.01.0002)d(ObjectID)q(Count)
-- 3C=SendWareHouseWithDrawList:d(count:Loop.01.0002)d(ObjectID)q(Count)
-- 3D=RequestShortCutReg:d(Type)d(Slot)d(ID)d(:)
-- 3F=RequestShortCutDel:d(ID)
-- 40=RequestBuyItem:d(ListID)d(count:Loop.01.0002)d(ItemID:Get.F0)q(Count)
-- 42=RequestJoinParty:s(Name)d(ItemDistribution)
-- 43=RequestAnswerJoinParty:d(Response)
-- 44=RequestWithDrawalParty:
-- 45=RequestOustPartyMember:s(Name)
-- 47=CannotMoveAnymore:d(X)d(Y)d(Z)d(Heading)
-- 48=RequestTargetCancel:h(unselect)
-- 49=Say2:s(Text)d(Type:Get.FSay2)s(Target)
-- 4D=RequestPledgeMemberList:
-- 4F=DummyPacket:
-- 50=RequestSkillList:
-- 52=MoveWithDelta:d(X)d(Y)d(Z)
-- 53=RequestGetOnVehicle:d(BoatObjID)d(X)d(Y)d(Z)
-- 54=RequestGetOffVehicle:d(BoatObjID)d(X)d(Y)d(Z)
-- 55=AnswerTradeRequest:d(Response)
-- 56=RequestActionUse:d(Action:Get.F9)d(CtrlPressed)c(ShiftPressed)
-- 57=RequestRestart:
-- 58=RequestSiegeInfo:
-- 59=ValidatePosition:d(X)d(Y)d(Z)d(Heading)d(Data)
-- 5B=StartRotating:d(degree)d(side)
-- 5C=FinishRotating:d(degree)d(:)
-- 5E=RequestShowBoard:d(FlagShow)
-- 5F=RequestEnchantItem:d(ObjectID)d(supportID)
-- 60=RequestDestroyItem:d(ObjectID)q(Count)
-- 62=RequestQuestList:
-- 63=RequestQuestAbort:d(QuestID)
-- 65=RequestPledgeInfo:d(ClanID)
-- 66=RequestPledgeExtendedInfo:s(PledgeName)
-- 67=RequestPledgeCrest:d(CrestID)
-- 6B=RequestSendFriendMsg:s(Message)s(Reciever)
-- 6C=RequestShowMiniMap:
-- 6E=RequestRecordInfo:
-- 6F=RequestHennaEquip:d(SymbolID)
-- 70=RequestHennaRemoveList:d(symbolID)
-- 71=RequestHennaItemRemoveInfo:d(symbolID)
-- 72=RequestHennaRemove:d(symbolID)
-- 73=RequestAcquireSkillInfo:d(skillID:Get.Skill)d(Level)d(Type)
-- 74=SendBypassBuildCmd:s(Command)
-- 75=ReqMoveToLocationInVehicle:d(BoatObjID)d(ToX)d(ToY)d(ToZ)d(OrigX)d(OrigY)d(OrigZ)
-- 76=CannotMoveAnymoreInVehicle:d(BoatObjID)d(X)d(Y)d(Z)d(Heading)
-- 77=RequestFriendInvite:s(Name)
-- 78=RequestAnswerFriendInvite:d(Response)
-- 79=RequestFriendList:
-- 7A=RequestFriendDel:s(Name)
-- 7B=CharacterRestore:d(CharSlot)
-- 7C=RequestAcquireSkill:d(skillID:Get.Skill)d(Level)d(Type)d(subtype)
-- 7D=RequestRestartPoint:d(PointType)
-- 7E=RequestGMCommand:s(TargetName)d(Command)d(0)
-- 7F=RequestPartyMatchConfig:d(AutomaticRegistration)d(ShowLevel)d(ShowClass)s(Memo)
-- 80=RequestPartyMatchList:d(roomID)d(membMax)d(lvlMin)d(lvlMax)d(loot)s(roomTitle)
-- 81=RequestPartyMatchDetail:d(ObjectID)d(roomID)d(0)d(0)d(0)
-- 83=RequestPrivateStoreBuy:d(StorePlayerID)d(count:Loop.01.0003)d(ObjectID)q(Count)q(Price)
-- 85=RequestTutorialLinkHtml:s(Bypass)
-- 86=RequestTutorialPassCmdToServer:s(Bypass)
-- 87=RequestTutorialQuestionMark:d(Number)
-- 88=RequestTutorialClientEvent:d(EventID)
-- 89=RequestPetition:s(Content)d(Type)
-- 8A=RequestPetitionCancel:d(0)
-- 8B=RequestGMList:
-- 8C=RequestJoinAlly:d(_ID)
-- 8D=RequestAnswerJoinAlly:d(Response)
-- 8E=AllyLeave:
-- 8F=AllyDismiss:s(ClanName)
-- 90=RequestDismissAlly:
-- 91=RequestSetAllyCrest:b(CrestAlly)
-- 92=RequestAllyCrest:d(CrestID)
-- 93=RequestChangePetName:s(Name)
-- 94=RequestPetUseItem:d(ObjectID)
-- 95=RequestGiveItemToPet:d(ObjectID)q(Amount)
-- 96=ReqPrivateStoreQuitSell:
-- 97=SetPrivateStoreMsgSell:s(StoreMsg)
-- 98=RequestPetGetItem:d(ObjectID)
-- 99=ReqPrivateStoreManageBuy:
-- 9A=SetPrivateStoreListBuy:d(count:Loop.01.0008)d(ItemID:Get.F0)d(:)q(Count)q(Price)d(:)d(:)d(:)d(:)
-- 9C=ReqPrivateStoreQuitBuy:
-- 9D=SetPrivateStoreMsgBuy:s(StoreMsg)
-- 9F=RequestPrivateStoreSell:d(StorePlayerID)d(count:Loop.01.0006)d(ObjectID)d(ItemID:Get.F0)h(0)h(0)q(Count)q(Price)
-- A6=RequestSkillCoolTime:
-- A7=ReqPackageSendableItemList:d(ObjectID)
-- A8=RequestPackageSend:d(ObjectID)d(count:Loop.01.0002)d(_ID)q(Count)
-- A9=RequestBlock:d(Type)s(name)
-- AA=RequestSiegeInfo:
-- AB=RequestSiegeAttackerList:d(CastleID)
-- AC=RequestSiegeDefenderList:d(CastleID)
-- AD=RequestJoinSiege:d(CastleID)d(IsAttacker)d(IsJoining)
-- AE=ReqConfirmSiegeWaitingList:d(CastleID)d(ClanID)d(Approved)
-- B0=MultiSellChoose:d(ListID)d(EntryID)q(Amount)
-- B1=NetPing:d(kID)d(PING)d(dta)
-- B3=RequestUserCommand:d(Command)
-- B4=SnoopQuit:d(SnoopID)
-- B5=RequestRecipeBookOpen:d(isDwarvenCraft)
-- B6=RequestRecipeBookDestroy:d(RecipeID:Get.F3)
-- B7=RequestRecipeItemMakeInfo:d(RecipeID:Get.F3)
-- B8=RequestRecipeItemMakeSelf:d(RecipeID:Get.F3)
-- BA=RequestRecipeShopMessageSet:s(Name)
-- BB=RequestRecipeShopListSet:d(count:Loop.01.0002)d(RecipeID:Get.F3)q(Cost)
-- BC=RequestRecipeShopManageQuit:
-- BE=RequestRecipeShopMakeInfo:d(CharID)d(RecipeID:Get.F3)
-- BF=RequestRecipeShopMakeItem:d(ID)d(RecipeID:Get.F3)q(count)
-- C0=RequestRecipeShopManagePrev:
-- C1=ObserverReturn:
-- C2=RequestEvaluate:d(TargetID)
-- C3=RequestHennaList:d(0)
-- C4=RequestHennaItemInfo:d(SymbolID)
-- C5=RequestBuySeed:d(ManorID)d(Count:Loop.01.0002)d(ItemID:Get.F0)q(Count)
-- C6=DlgAnswer:d(MessageID)d(Answer)d(requesterId)
-- //RequestWearItem
-- C7=RequestPreviewItem:d(:)d(ListID)d(count:Loop.01.0001)d(ItemID:Get.F0)
-- C8=RequestSSQStatus:c(Page)
-- CB=GameGuardReply:d(d)d(d)d(d)d(d)
-- CC=RequestPledgePower:d(Rank)d(Action)d(Privs)
-- CD=RequestMakeMacro:d(MacroID)s(Name)s(Desc)s(Acronym)c(Icon)c(MacroCount:Loop.01.0005)c(Entry)c(Type)d(D1)c(D2)s(Command)
-- CE=RequestDeleteMacro:d(MacroID)
-- CF=RequestBuyProcure:d(ListID)d(Count:Loop.01.0003)d(Servise)d(ItemID:Get.F0)q(Count)
-- //[GS_T25] client two ID packets:    // :h(subID)
-- D001=RequestManorList:h(subID)
-- D002=RequestProcureCropList:h(subID)d(count:Loop.01.0004)d(ObjectID)d(ItemID:Get.F0)d(ManorID)q(Count)
-- D003=RequestSetSeed:h(subID)d(ManorID)d(count:Loop.01.0003)d(ItemID:Get.F0)q(Sales)q(Price)
-- D004=RequestSetCrop:h(subID)d(ManorID)d(count:Loop.01.0004)d(ItemID:Get.F0)q(Sales)q(Price)c(Type)
-- D005=RequestWriteHeroWords:h(subID)s(HeroWords)
-- D006=RequestExAskJoinMPCC:h(subID)s(Name)
-- D007=RequestExAcceptJoinMPCC:h(subID)d(Response)
-- D008=RequestExOustFromMPCC:h(subID)s(Name)
-- D009=RequestOustFromPartyRoom:h(subID)d(ID)
-- D00A=RequestDismissPartyRoom:h(subID)d(roomID)d(Data)
-- D00B=RequestWithdrawPartyRoom:h(subID)d(roomID)d(Data)
-- D00C=RequestChangePartyLeader:h(subID)s(Name)
-- D00D=RequestAutoSoulShot:h(subID)d(ItemID:Get.F0)d(Type)
-- D00E=RequestExEnchantSkillInfo:h(subID)d(skillID:Get.Skill)d(SkillLevel)
-- D00F=RequestExEnchantSkill:h(subID)d(skillID:Get.Skill)d(SkillLevel)
-- D010=RequestExPledgeCrestLarge:h(subID)d(CrestID)
-- D011=ReqExSetPledgeCrestLarge:h(subID)b(Crest)
-- D012=ReqPledgeSetAcademyMaster:h(subID)d(Set)s(CurrentPlayerName)s(TargetPlayer)
-- D013=ReqPledgePowerGradeList:h(subID)
-- D014=ReqPledgeMemberPowerInfo:h(subID)d(:)s(PlayerName)
-- D015=ReqPledgeSetMemberPowerGrade:h(subID)s(MemberName)d(PowerGrade)
-- D016=RequestPledgeMemberInfo:h(subID)d(:)s(PlayerName)
-- D017=RequestPledgeWarList:h(subID)d(:)d(Tab)
-- D018=RequestExFishRanking:h(subID)
-- D019=RequestPCCafeCouponUse:h(subID)s(str)
-- D01B=RequestDuelStart:h(subID)s(PlayerName)d(PartyDuel)
-- D01C=RequestDuelAnswerStart:h(subID)d(PartyDuel)d(:)d(Response)
-- D01E=RequestExRqItemLink:h(subID)d(ObjectID)
-- D020=MoveToLocationInAirShip:h(subID)d(shipID)d(x)d(y)d(z)d(origX)d(origY)d(origZ)
-- D021=RequestKeyMapping:h(subID)
-- D022=RequestSaveKeyMapping:h(subID)d(:)d(:)d(count:Loop.01.0010)c(cmd1sz:Loop.01.0001)c(cmdID)c(cmd2sz:Loop.01.0001)c(cmdID)d(cmdSz:Loop.01.0005)d(cmd)d(key)d(tgK1)d(tgK2)d(show)d(:)d(:)
-- D023=ReqExRemoveItemAttribute:h(subID)d(ObjID)d(element)
-- D024=RequestSaveInventoryOrder:h(subID)d(count:Loop.01.0002)d(ObjectID)d(Order)
-- D025=ReqExitPartyMatchingWaitingRoom:h(subID)
-- D026=RequestConfirmTargetItem:h(subID)d(ObjectID)
-- D027=RequestConfirmRefinerItem:h(subID)d(TargetItemObjID)d(RefinerItemObjID)
-- D028=RequestConfirmGemStone:h(subID)d(TargetItemObjID)d(RefinerItemObjID)d(GemStoneItemObjID)q(GemStoneCount)
-- D029=RequestOlympiadObserverEnd:h(subID)
-- D02A=RequestCursedWeaponList:h(subID)
-- D02B=RequestCursedWeaponLocation:h(subID)
-- D02C=ReqPledgeReorganizeMember:h(subID)d(isSelected)s(memberName)d(PledgeType)s(selectedMember)
-- D02D=ReqExMPCCShowPartyMembersInfo:h(subID)d(partyLeaderID)
-- D02E=RequestOlympiadMatchList:h(subID)
-- D02F=RequestAskJoinPartyRoom:h(subID)s(player)
-- D030=AnswerJoinPartyRoom:h(subID)d(requesterID)
-- D031=ReqListPartyMatchingWaitingRoom:h(subID)d(page)d(minlvl)d(maxlvl)d(mode)
-- D032=ReqExEnchantSkillSafe:h(subID)d(skillID:Get.Skill)d(SkillLvl)
-- D033=ReqExEnchantSkillUntrain:h(subID)d(skillID:Get.Skill)d(SkillLvl)
-- D034=ReqExEnchantSkillRouteChange:h(subID)d(skillID:Get.Skill)d(SkillLvl)
-- D035=ReqExEnchantItemAttribute:h(subID)d(ObjID)
-- D036=ExGetOnAirShip:h(subID)d(X)d(Y)d(Z)d(ShipID)
-- D038=MoveToLocationAirShip:h(subID)d(command)d(param1)d(param2)
-- D039=RequestBidItemAuction:h(subID)d(instanceID)q(bid)
-- D03A=RequestInfoItemAuction:h(subID)d(instanceID)
-- D03B=RequestExChangeName:h(subID)d(type)s(newName)d(charSlot)
-- D03C=RequestAllCastleInfo:h(subID)
-- D03D=RequestAllFortressInfo:h(subID)
-- D03E=RequestAllAgitInfo:h(subID)
-- D03F=ReqFortressSiegeInfo:h(subID)
-- D040=RequestGetBossRecord:h(subID)s(BossID)
-- D041=RequestRefine:h(subID)d(TargetItemOID)d(RefinerItemOID)d(GemStoneItemOID)q(GemStoneCount)
-- D042=ReqConfirmCancelItem:h(subID)d(ObjID)
-- D043=RequestRefineCancel:h(subID)d(TargetItemOID)
-- D044=ReqExMagicSkillUseGround:h(subID)d(X)d(Y)d(Z)d(skillID:Get.Skill)d(CtrlPressed)c(ShiftPressed)
-- D045=RequestDuelSurrender:h(subID)
-- D046=ReqExEnchantSkillInfoDetail:h(subID)d(Type)d(skillID:Get.Skill)d(SkillLvl)
-- D047=ReqExMagicSkillUseGround:h(subID)d(X)d(Y)d(Z)d(skillID:Get.Skill)d(CtrlPressed)c(ShiftPressed)
-- D048=RequestFortressMapInfo:h(subID)d(fortressID)
-- D049=RequestPVPMatchRecord:h(subID)
-- D04A=SetPrivateStoreWholeMsg:h(subID)s(Msg)
-- D04B=RequestDispel:h(subID)d(PlayerOID)d(skillID:Get.Skill)d(SkillLvl)
-- D04C=ReqExTryToPutEnchantTargetItem:h(subID)d(ObjID)
-- D04D=ReqExTryToPutEnchantSupportItem:h(subID)d(supportOID)d(enchantOID)
-- D04E=ReqExCancelEnchantItem:h(subID)
-- D04F=ReqChangeNicknameColor:h(subID)d(colorNum)s(title)d(itemOID)
-- D050=ReqResetNickname:h(subID)
-- D051=RequestExCancelEnchantItem:h(subID)
-- D052=ReqWithDrawPremiumItem:h(subID)d(itemNum)d(charID)q(itemCount)
-- D053=RequestResetNickname:h(subID)
-- D057=ReqJoinDominionWar:h(subID)d(territoryID)d(isClan)s(isJoining)
-- D058=ReqDominionInfo:h(subID)
-- D05A=ReqExCubeGameChangeTeam:h(subID)d(arena)d(team)
-- D05B=EndScenePlayer:h(subID)d(movieID)
-- D05C=ReqExCubeGameReadyAnswer:h(subID)d(arena)d(answer)
-- D063=RequestSeedPhase:h(subID)
-- D065=RequestPostItemList:h(subID)
-- D066=RequestSendPost:h(subID)s(receiver)d(isCod)s(subj)s(text)d(attachCount:Loop.01.0002)d(ObjID)q(count)q(reqAdena)
-- D067=ReqReceivedPostList:h(subID)
-- D068=ReqDeleteReceivedPost:h(subID)d(count:Loop.01.0001)d(msgID)
-- D069=RequestReceivedPost:h(subID)d(msgID)
-- D06A=RequestPostAttachment:h(subID)d(msgID)
-- D06B=ReqRejectPostAttachment:h(subID)d(msgID)
-- D06C=RequestSentPostList:h(subID)
-- D06D=RequestDeleteSentPost:h(subID)d(count:Loop.01.0001)d(msgID)
-- D06E=RequestSentPost:h(subID)d(msgID)
-- D06F=RequestCancelPost:h(subID)d(msgID)
-- D075=RequestRefundItem:h(subID)d(listID)d(count:Loop.01.0001)d(items)
-- D076=RequestBuySellUIClose:h(subID)
-- D078=ReqPartyLootModification:h(subID)d(mode)
-- D079=AnswerPartyLootModification:h(subID)d(answer)
-- D07A=AnswerCoupleAction:h(subID)d(actionID)d(answer)d(objID)
-- D07B=BrEventRankerList:h(subID)d(eventID)d(day)d(ranking)
-- D07C=AskMembership:h(subID)
-- D07D=ReqAddExpandQuestAlarm:h(subID)
-- D07E=RequestVoteNew:h(subID)
-- D07F=RequestBRGamePoint:h(subID)
-- D080=RequestBRProductList:h(subID)
-- D081=RequestBRProductInfo:h(subID)
-- D082=RequestBRBuyProduct:h(subID)
-- D083=RequestBRRecentProductList:h(subID)
-- D084=BrMinigameLoadScores:h(subID)
-- D085=BrMinigameInsertScore:h(subID)
-- D086=BrLectureMark:h(subID)
-- //[GS_T25] client three ID packets:    // :h(subID)
-- D05100=RequestBookMarkSlotInfo:h(subID)
-- D05101=RequestSaveBookMarkSlot:h(subID)s(name)d(icon)s(tag)
-- D05102=RequestModifyBookMarkSlot:h(subID)d(markID)s(name)d(icon)s(tag)
-- D05103=RequestDeleteBookMarkSlot:h(subID)d(markID)
-- D05104=RequestTeleportBookMark:h(subID)d(markID)
-- D05105=RequestChangeBookMarkSlot:h(subID)
-- D05A00=ReqExCubeGameChangeTeam:h(subID)d(team)
-- 
-- [server]
-- 00=Die:d(CharOID {mobOID})d(canTele)d(HasHideout)d(HasCastle)d(Flags)d(Sweepable)d(Access)d(hasFort)
-- 01=Revive:d(ObjectID)
-- 05=SpawnItem:d(ObjectID)d(ItemID:Get.F0)d(X)d(Y)d(Z)d(Stackable)q(Count)d(0)d(0)
-- 06=SellList:q(Money)d(Lease)h(count:Loop.01.0022)h(ItemType1)d(ObjID)d(ItemID:Get.F0)q(Count)h(ItemType2)h(0)d(ItemBodyPart)h(enchLvl)h(0)h(custType2)q(ReferencePrice/2)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)
-- 07=BuyList:q(money)d(buyListID)h(buyListSize:Loop.01.0025)d(itemID:Get.F0)d(itemID:Get.F0)d(0)q(curCount)h(type2)h(type1)h(isEquip)d(bodyPart)h(enchLvl)h(custType)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)q(price*taxRate)
-- 08=DeleteObject:d(ObjectID)d(0)
-- 09=CharSelectInfo:d(Count:Loop.03.65)d(07)c(0)s(Name)d(CharID)s(LoginName)d(SessionID)d(ClanID)d(0)d(Sex)d(Race)d(ClassID:Get.ClassID)d(active)d(X)d(Y)d(Z)f(curHP)f(curMP)d(SP)q(Exp)d(Level)d(karma)d(pkKills)d(pvpKills)z(0028d*7)d(Unde:Get.F0)d(REar:Get.F0)d(LEar:Get.F0)d(Neck:Get.F0)d(RRing:Get.F0)d(LRing:Get.F0)d(Head:Get.F0)d(RHand:Get.F0)d(LHand:Get.F0)d(Gloves:Get.F0)d(Chest:Get.F0)d(Legs:Get.F0)d(Feet:Get.F0)d(Back:Get.F0)d(LRHand:Get.F0)d(Hair:Get.F0)d(Hair2:Get.F0)d(RBrace:Get.F0)d(LBrace:Get.F0)d(DEC1:Get.F0)d(DEC2:Get.F0)d(DEC3:Get.F0)d(DEC4:Get.F0)d(DEC5:Get.F0)d(DEC6:Get.F0)d(Belt:Get.F0)d(HairStyle)d(HairColor)d(Face)f(max_HP)f(max_MP)d(DELDays)d(ClassID:Get.ClassID)d(autoSel)c(EnchantEffect)d(Augm:Get.F1)d(Transform)d(tameNpc:Get.NpcId)d(lvl)d(0)d(food)f(maxHp)f(curHp)
-- 0A=LoginFail:d(reason:Get.F9)
-- 0B=CharSelected:s(Name)d(CharID)s(Title)d(SessionID)d(ClanID)d(0)d(Sex)d(Race)d(ClassID:Get.ClassID)d(active)d(X)d(Y)d(Z)f(curHP)f(curMP)d(SP)q(EXP)d(Level)d(karma)d(pkKills)d(INT)d(STR)d(CON)d(MEN)d(DEX)d(WIT)d(gameTime)d(0)d(ClassID:Get.ClassID)z(0016)z(0064)d(0)
-- 0C=NpcInfo:d(ObjID)d(NpcId:Get.NpcId)d(IsAttackable)d(X)d(Y)d(Z)d(Heading)d(0)d(CastSpd)d(AtkSpd)d(RunSpd)d(WalkSpd)d(SwimRunSpd)d(SwimWalkSpd)d(FlRunSpd)d(FlWalkSpd)d(FlyRunSpd)d(FlyWalkSpd)f(MoveMult)f(ASpdMult)f(CollisionRadius)f(CollisionHeight)d(RHand:Get.F0)d(Chest:Get.F0)d(LHand:Get.F0)c(nameabove)c(isRunning)c(isInCombat)c(isALikeDead)c(isSummoned)s(Name)s(Title)d(TitleColor:Get.FCol)d(pvpFlag)d(Karma)d(AbnormalEffect)d(clanID)d(crestID)d(allyID)d(allyCrest)c(isFlying)c(Team)f(CollisionRadius)f(CollisionHeight)d(enchEffects)d(isFlying)d(0)d(form)c(isShowName)c(isShowName)d(SpecEffects)d(dispEffect)
-- 0D=NewCharacterSuccess:d(count:Loop.01.0020)d(Race)d(ClassID:Get.ClassID)d(46)d(BaseSTR)d(0a)d(46)d(BaseDEX)d(0a)d(46)d(BaseCON)d(0a)d(46)d(BaseINT)d(0a)d(46)d(BaseWIT)d(0a)d(46)d(BaseMEN)d(0a)
-- 0F=CharCreateOk:d(01)
-- 10=CharCreateFail:d(ErrorCode)
-- 11=ItemList:h(ShowWindow)h(count:Loop.01.0024)d(ObjectID)d(ItemID:Get.F0)d(LocationSlot)q(Count)h(ItemType2)h(CustomType1)h(isEquipped)d(BodyPart)h(EnchantLevel)h(CustType2)d(AugmentID:Get.F1)d(Mana)d(remainTime)h(AttackElem)h(AttackElemVal)h(DefAttrFire)h(DefAttrWater)h(DefAttrWind)h(DefAttrEarth)h(DefAttrHoly)h(DefAttrUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)h(blockedItems:Loop.02.0001)c(blockMode)d(blockItem)
-- 12=SunRise:
-- 13=SunSet:
-- 14=TradeStart:d(ObjID)h(count:Loop.01.0024)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(isEquip)d(BodyPart)h(enchantLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)
-- 16=DropItem:d(PlayerID)d(ObjectID)d(ItemID:Get.F0)d(X)d(Y)d(Z)d(Stackable)q(Count)d(:)
-- 17=GetItem:d(PlayerID)d(ObjectID)d(X)d(Y)d(Z)
-- 18=StatusUpdate:d(ObjectID)d(AttribCount:Loop.01.0002)d(AttrID:Get.FSup)d(AttrValue)
-- 19=NpcHtmlMessage:d(objID)s(HTML)d(itemID)
-- 1A=TradeOwnAdd:h(count:Loop.01.0021)h(ItemType1)d(ObjectID)d(ItemID:Get.F0)q(Count)h(ItemType2)h(custType1)d(BodyPart)h(EnchantLevel)h(0)h(custType2)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)
-- 1B=TradeOtherAdd:h(count:Loop.01.0021)h(ItemType1)d(ObjectID)d(ItemID:Get.F0)q(Count)h(ItemType2)h(custType1)d(BodyPart)h(EnchantLevel)h(0)h(custType2)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)
-- 1C=TradeDone:d(Num)
-- 1D=CharDeleteSuccess:
-- 1E=CharDeleteFail:d(ErrorCode)
-- 1F=ActionFailed:
-- 20=ServerClose:
-- 21=InventoryUpdate:h(count:Loop.01.0025)h(1add 2mod 3remove)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(ItemType2)h(CustomType1)h(isEquipped)d(BodyPart)h(EnchantLevel)h(CustType2)d(AugmID:Get.F1)d(Mana)d(remainTime)h(AttackElem)h(AttackElemVal)h(DefAttrFire)h(DefAttrWater)h(DefAttrWind)h(DefAttrEarth)h(DefAttrHoly)h(DefAttrUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)
-- 22=TeleportToLocation:d(TargetID)d(X)d(Y)d(Z)d(0)d(heading)
-- 23=TargetSelected:d(ObjectID)d(TargetID)d(X)d(Y)d(Z)d(0)
-- 24=TargetUnselected:d(TargetID)d(X)d(Y)d(Z)d(0)
-- 25=AutoAttackStart:d(TargetID)
-- 26=AutoAttackStop:d(TargetID)
-- 27=SocialAction:d(PlayerID)d(Action:Get.F9)
-- 28=ChangeMoveType:d(CharID)d(Running)d(0)
-- 29=ChangeWaitType:d(CharID)d(MoveType)d(X)d(Y)d(Z)
-- 2A=ManagePledgePower:d(:)d(:)d(Privs)
-- 2C=AskJoinPledge:d(RequestorID)s(sub/PledgeName)d(pledgeType)s(sub/PledgeName)
-- 2D=JoinPledge:d(PledgeID)
-- 2E=KeyInit:c(isOk)q(KeyL)q(KeyH)c(c)d(seed)
-- 2F=MoveToLocation:d(ObjectID)d(DestX)d(DestY)d(DestZ)d(CurX)d(CurY)d(CurZ)
-- //SummonSay, NpcSay
-- 30=NpcSay:d(ObjectID)d(textType)d(NpcID:Get.NpcId)d(msgType)s(Msg)s(pMsg)
-- 31=CharInfo:d(X)d(Y)d(Z)d(Heading)d(ObjectID)s(Name)d(Race)d(Sex)d(ClassID:Get.ClassID)d(Under:Get.F0)d(Head:Get.F0)d(RHand:Get.F0)d(LHand:Get.F0)d(Gloves:Get.F0)d(Chest:Get.F0)d(Legs:Get.F0)d(Feet:Get.F0)d(Back:Get.F0)d(LRHand:Get.F0)d(Hair:Get.F0)d(Hair2:Get.F0)d(RBrace:Get.F0)d(LBrace:Get.F0)d(DEC1:Get.F0)d(DEC2:Get.F0)d(DEC3:Get.F0)d(DEC4:Get.F0)d(DEC5:Get.F0)d(DEC6:Get.F0)d(Belt:Get.F0)d(AUnder:Get.F1)d(AHead:Get.F1)d(ARHand:Get.F1)d(ALHand:Get.F1)d(AGloves:Get.F1)d(AChest:Get.F1)d(ALegs:Get.F1)d(AFeet:Get.F1)d(ABack:Get.F1)d(ALRHand:Get.F1)d(AHair:Get.F1)d(AHair2:Get.F1)d(ARBrace:Get.F1)d(ALBrace:Get.F1)d(ADEC1:Get.F1)d(ADEC2:Get.F1)d(ADEC3:Get.F1)d(ADEC4:Get.F1)d(ADEC5:Get.F1)d(ADEC6:Get.F1)d(ABelt:Get.F1)d(0)d(1)d(pvpFlag)d(karma)d(CastSpd)d(AtkSpd)d(0)d(runSpd)d(walkSpd)d(swimRSpd)d(swimWSpd)d(flRunSpd)d(flWalkSpd)d(flyRunSpd)d(flyWalkSpd)f(SpdMult)f(ASpdMult)f(collisRadius)f(collisHeight)d(HairStyle)d(HairColor)d(Face)s(Title)d(clanID)d(clanCrestID)d(allyID)d(allyCrestID)c(isStand)c(isRun)c(isInFight)c(isAlikeDead)c(Invis)c(mountType)c(isShop)h(cubics:Loop.01.0001)h(cubID)c(findparty)d(abnEffects)c(isFlying)h(RecomHave)d(MountNpcID:Get.NpcId)d(classID:Get.ClassID)d(curCP)c(isMounted)c(Team)d(clanBigCrestId)c(isNoble)c(isHero)c(isFishing)d(fishX)d(fishY)d(fishZ)d(NameColor:Get.FCol)d(heading)d(PledgeClass)d(PledgeType)d(TitleColor:Get.FCol)d(CursedItem:Get.F0)d(ClanRep)d(TransformID)d(AgathionID)d(Fame)d(specEffects)d(0)d(0)d(0)
-- 32=UserInfo:d(X)d(Y)d(Z)d(isInAirShip)d(ObjectID)s(Name)d(Race)d(Sex)d(ClassID:Get.ClassID)d(Level)q(Exp)d(Str)d(Dex)d(Con)d(Int)d(Wit)d(Men)d(MaxHP)d(CurHP)d(MaxMP)d(CurMP)d(Sp)d(CurLoad)d(MaxLoad)d(isWeapEquip 40yes)d(Under)d(REar)d(LEar)d(Neck)d(RRing)d(LRing)d(Head)d(RHand)d(LHand)d(Gloves)d(Chest)d(Legs)d(Feet)d(Back)d(LRHand)d(Hair)d(Hair2)d(RBrace)d(LBrace)d(DEC1)d(DEC2)d(DEC3)d(DEC4)d(DEC5)d(DEC6)d(Belt)d(Under:Get.F0)d(REar:Get.F0)d(LEar:Get.F0)d(Neck:Get.F0)d(RRing:Get.F0)d(LRing:Get.F0)d(Head:Get.F0)d(RHand:Get.F0)d(LHand:Get.F0)d(Gloves:Get.F0)d(Chest:Get.F0)d(Legs:Get.F0)d(Feet:Get.F0)d(Back:Get.F0)d(LRHand:Get.F0)d(Hair:Get.F0)d(Hair2:Get.F0)d(RBrace:Get.F0)d(LBrace:Get.F0)d(DEC1:Get.F0)d(DEC2:Get.F0)d(DEC3:Get.F0)d(DEC4:Get.F0)d(DEC5:Get.F0)d(DEC6:Get.F0)d(Belt:Get.F0)d(AUnder:Get.F1)d(AREar:Get.F1)d(ALEar:Get.F1)d(ANeck:Get.F1)d(ARRing:Get.F1)d(ALRing:Get.F1)d(AHead:Get.F1)d(ARHand:Get.F1)d(ALHand:Get.F1)d(AGloves:Get.F1)d(AChest:Get.F1)d(ALegs:Get.F1)d(AFeet:Get.F1)d(ABack:Get.F1)d(ALRHand:Get.F1)d(AHair:Get.F1)d(AHair2:Get.F1)d(ARBrace:Get.F1)d(ALBrace:Get.F1)d(ADEC1:Get.F1)d(ADEC2:Get.F1)d(ADEC3:Get.F1)d(ADEC4:Get.F1)d(ADEC5:Get.F1)d(ADEC6:Get.F1)d(ABelt:Get.F1)d(talismanSlots)d(cloakStatus)d(Patk)d(PatkSpd)d(Pdef)d(EvasionRate)d(Accuracy)d(CriticalHit)d(Matk)d(MatkSpd)d(PatkSpd)d(Mdef)d(PvPFlag)d(Karma)d(RunSpd)d(WalkSpd)d(SwimRunSpd)d(SwimWalkSpd)d(0)d(0)d(FlyRunSpd)d(FlyWalkSpd)f(MoveMul)f(AtkSpeedMul)f(ColRadius)f(ColHeight)d(HairStyle)d(HairColor)d(Face)d(isGM)s(Title)d(ClanID)d(ClanCrestID)d(AllyID)d(AllyCrestID)d(Relation)c(mountType)c(privateStoreType)c(isDwarvenCraft)d(pkKills)d(pvpKills)h(cubicsSize:Loop.01.0001)h(cubicID)c(findParty)d(abnormalEffect)c(isFlyingMounted)d(clanPrivs)h(recomLeft)h(recomHave)d(mountNpcID:Get.NpcId)h(inventoryLimit)d(ClassID:Get.ClassID)d(specEffects)d(MaxCP)d(CurCP)c(isMounted)c(Team)d(clanCrestLargeID)c(isNoble)c(isHero)c(isFishing)d(fishX)d(fishY)d(fishZ)d(nameColor:Get.FCol)c(isRunning)d(PledgeClass)d(PledgeType)d(titleColor:Get.FCol)d(cursedWeap:Get.F0)d(Transformation)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)d(AgathionId)d(Fame)d(mmapAllowed)d(Vitality)d(specEffects)
-- 33=Attack:d(AttackerObjID)d(TargetObjID)d(Damage)c(Flags)d(X)d(Y)d(Z)h(HitsLength:Loop.01.0003)d(TargetID)d(Damage)c(Flags)d(TargetX)d(TargetY)d(TargetZ)
-- 39=AskJoinParty:s(requestorName)d(itemDistribution)
-- 3A=JoinParty:d(Response)
-- 41=WareHouseDepositList:h(WhType)q(PlayerAdena)h(count:Loop.01.0025)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(isEquip)d(BodyPart)h(enchantLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)d(ObjId)
-- 42=WareHouseWithdrawList:h(WhType)q(PlayerAdena)h(count:Loop.01.0025)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(isEquip)d(BodyPart)h(enchantLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)d(ObjId)
-- //44=ShortCutRegister:d(TYPE:SV0)d(slot)v(caseTypeItem:LV0.ExNE.1.Hskip.6)d(objID)d(charType)d(shareReuseGrp)q(0)d(itemAugment:Get.F1)v(.:EV0:hskip.8)v(caseTypeSkill:LV0.ExNE.2.hskip.5)d(skillID:Get.Skill)d(lvl)c(0)d(charType)v(.:EV0:hskip.2)d(_id)d(charType)
-- //phx
-- 44=ShortCutRegister:d(type:switch.2.6)d(slotPage)d(idOrObjectid)_(TYPE_ITEM:case.1.6)d(unk)d(unk)d(unk)d(unk)h(unk)h(unk)_(TYPE_SKILL:case.2.3)d(level)c(unk)d(unk)_(TYPE_ACTION:case.3.1)d(unk)_(TYPE_MACRO:case.4.1)d(unk)_(TYPE_RECIPE:case.5.1)d(unk)_(TYPE_UNKNOWN:case.6.1)d(unk)
-- //45=ShortCutInit:d(sCutsSize:Loop.01.0025)d(TYPE:SV0)d(slot)v(caseTypeItem:LV0.ExNE.1.Hskip.5)d(objID)d(1)d(shareReuseGrp)q(0)v(.:EV0:hskip.0)v(caseTypeSkill:LV0.ExNE.2.hskip.4)d(skillID:Get.Skill)d(lvl)c(0)v(.:EV0:hskip.0)v(caseTypeAction:LV0.ExNE.3.hskip.2)d(ActionID)v(.:EV0:hskip.0)v(caseTypeMacro:LV0.ExNE.4.hskip.2)d(MacroID)v(.:EV0:hskip.0)v(caseTypeRecipe:LV0.ExNE.5.hskip.2)d(recipe:Get.F3)v(.:EV0:hskip.0)v(caseDefault:LV0.ExEQ.-1.hskip.1)d(_id)d(01)
-- //phx
-- 45=ShortCutInit:d(size:Loop.1.1)d(type:switch.2.6)d(slotPage)d(idOrObjectid)_(TYPE_ITEM:case.1.6)d(unk)d(unk)d(unk)d(unk)h(unk)h(unk)_(TYPE_SKILL:case.2.3)d(level)c(unk)d(unk)_(TYPE_ACTION:case.3.1)d(unk)_(TYPE_MACRO:case.4.1)d(unk)_(TYPE_RECIPE:case.5.1)d(unk)_(TYPE_UNKNOWN:case.6.1)d(unk)
-- 47=StopMove:d(ObjectID)d(X)d(Y)d(Z)d(Heading)
-- 48=MagicSkillUse:d(charID)d(targetID)d(skillID:Get.Skill)d(skillLvl)d(hitTime)d(reuseDelay)d(X)d(Y)d(Z)d(:)d(tx)d(ty)d(tz)
-- 49=MagicSkillCanceled:d(ObjectID)
-- 4A=CreatureSay:d(ObjectID)d(textType:Get.FSay2)s(charName)s(Message)
-- 4B=EquipUpdate:d(Change)d(ObjectID)d(BodyPart)
-- 4C=DoorInfo:d(ObjectID)d(DoorID)
-- 4D=DoorStatusUpdate:d(ObjectID)d(Open)d(Damage)d(Enemy)d(DoorID)d(CurrentHP)d(MaxHP)
-- 4E=PartySmallWindowAll:d(LeaderOID)d(LootDistribution)d(memberCount:Loop.01.0023)d(MemberObjId)s(MemberName)d(CurCP)d(MaxCP)d(CurHP)d(MaxHP)d(CurMP)d(MaxMP)d(Level)d(ClassID:Get.ClassID)d(0)d(Race)d(0)d(0)d(PetOID:GT3.flag.Loop.01.0008)d(PetID:Get.NpcId)d(summonType)s(PetName)d(curHP)d(maxHP)d(curMP)d(maxMP)d(lvl)
-- 4F=PartySmallWindowAdd:d(leaderID)d(distrib)d(memberOID)s(memberName)d(CurCP)d(MaxCP)d(CurHP)d(MaxHP)d(CurMP)d(MaxMP)d(Level)d(ClassID:Get.ClassID)d(:)d(:)
-- 50=PartySmallWindowDeleteAll:
-- 51=PartySmallWindowDelete:d(MemberObjID)s(MemberName)
-- 52=PartySmallWindowUpdate:d(MemberObjId)s(MemberName)d(CurrentCP)d(MaxCP)d(CurrentHP)d(MaxHP)d(CurrentMP)d(MaxMP)d(Level)d(ClassID:Get.ClassID)
-- 54=MagicSkillLaunched:d(ObjectID)d(SkillID:Get.Skill)d(SkillLevel)d(HitTimes:Loop.01.0001)d(TargetID)d(SingleTargetID)
-- 5A=PledgeShowMemberListAll:d(MainOrSubPledge)d(ClanID)d(PledgeType)s(ClanName)s(LeaderName)d(ClanCrestID)d(ClanLevel)d(HasCastle)d(HasHideOut)d(hasFortress)d(Rank)d(ReputationScore)d(0)d(0)d(AllyID)s(AllyName)d(AllyCrestID)d(isAtWar)d(terraCastleID)d(SubPledgeMembersCount:Loop.01.0007)s(MemberName)d(MemberLevel)d(MemberClassID:Get.ClassID)d(Sex)d(Race)d(onlineObjId)d(Sponsor)
-- 5B=PledgeShowMemberListUpdate:s(Name)d(Level)d(ClassID:Get.ClassID)d(Sex)d(Race)d(onlineObjID)d(PledgeType)d(Sponsor)
-- 5C=PledgeShowMemberListAdd:s(Name)d(Level)d(ClassID:Get.ClassID)d(0)d(1)d(isOnLine)d(PledgeType)
-- 5D=PledgeShowMemberListDelete:s(Name)
-- 5F=SkillList:d(ListCount:Loop.01.0005)d(isPassive)d(Level)d(SkillID:Get.Skill)c(isDisabled)c(enchanted)
-- 60=VehicleInfo:d(BoatObjID)d(BoatX)d(BoatY)d(BoatZ)d(BoatHeading)
-- 61=StopRotation:d(CharID)d(Degree)d(speed)c(0)
-- //62=SystemMessage:d(MsgID:Get.MsgID)d(typesCount:Loop.01.0027)d(type:SV0)v(caseTypeText:LV0.ExNE.0.Hskip.2)s(text)v(.:EV0:hskip.0)v(caseTypePText:LV0.ExNE.12.Hskip.2)s(text)v(.:EV0:hskip.0)v(caseTypeNpc:LV0.ExNE.2.Hskip.2)d(NpcID:Get.NpcId)v(.:EV0:hskip.0)v(caseTypeItem:LV0.ExNE.3.Hskip.2)d(ItemID:Get.F0)v(.:EV0:hskip.0)v(caseTypeSkill:LV0.ExNE.4.Hskip.3)d(skillID:Get.Skill)d(skillLvl)v(.:EV0:hskip.0)v(caseTypeItemNumb:LV0.ExNE.6.Hskip.2)q(value)v(.:EV0:hskip.0)v(caseTypeZone:LV0.ExNE.7.Hskip.4)d(x)d(y)d(z)v(.:EV0:hskip.0)v(caseOther:LV0.ExEQ.-1.hskip.1)d(value_or_id)
-- //phx
-- 62=SystemMessage:d(_messageId:Get.MsgID)d(size:Loop.1.1)d(type:switch.0.13)_(TYPE_TEXT:case.0.1)s(String)_(TYPE_NUMBER:case.1.1)d(Number)_(TYPE_NPC_NAME:case.2.1)d(Number:Get.NpcID)_(TYPE_ITEM_NAME:case.3.1)d(ItemID:Get.Func01)_(TYPE_SKILL_NAME:case.4.2)d(skill_id:Get.SkillID)d(skill_level)_(TYPE_UNKNOWN_5:case.5.1)d(Number)_(TYPE_LONG:case.6.1)q(Long)_(TYPE_ZONE_NAME:case.7.3)d(coord.x)d(coord.y)d(coord.z)_(TYPE_UNKNOWN_8:case.8.3)d(ItemID:Get.Func01)h(Number)h(Number)_(TYPE_UNKNOWN_9:case.9.1)d(Number)_(TYPE_UNKNOWN_10:case.10.1)d(Number)_(TYPE_UNKNOWN_11:case.11.1)d(Number)_(TYPE_UNKNOWN_12:case.12.1)s(String)
-- 63=StartPledgeWar:s(PlayerName)s(PledgeName)
-- 65=StopPledgeWar:s(PledgeName)s(PlayerName)
-- 67=SurrenderPledgeWar:s(PledgeName)s(PlayerName)
-- 6A=PledgeCrest:d(CrestID)b(CrestData)
-- 6B=SetupGauge:d(CharObjID)d(Dat1)d(Time)d(Time2)
-- 6C=VehicleDeparture:d(BoatObjID)d(Speed1)d(Speed2)d(X)d(Y)d(Z)
-- 6D=VehicleCheckLocation:d(BoatObjID)d(X)d(Y)d(Z)d(Heading)
-- 6E=GetOnVehicle:d(CharID)d(BoatObjID)d(X)d(Y)d(Z)
-- 6F=GetOffVehicle:d(CharID)d(BoatObjID)d(X)d(Y)d(Z)
-- 70=SendTradeRequest:d(SenderID)
-- 71=RestartResponse:d(isOk)s(Message)
-- 72=MoveToPawn:d(charID)d(targetId)d(distance)d(X)d(Y)d(Z)d(tX)d(tY)d(tZ)
-- 73=SSQInfo:h(Sky)
-- 74=GameGuardQuery:d(0x27533dd9)d(0x2e72a51d)d(0x2017038b)d(0xc35b1ea3)
-- 75=FriendList:d(count:Loop.01.0004)d(FriendID)s(FriendName)d(isOnLine)d(onlineObjID)
-- 76=FriendPacket:d(action 1add3rem)d(objID)s(name)d(isOnline)d(onlineObjID)
-- 77=FriendStatusPacket:d(isOnline)s(name)d(objID)
-- 78=L2FriendSay:d(0)s(Receiver)s(Sender)s(Message)
-- 79=ValidateLocation:d(CharID)d(X)d(Y)d(Z)d(Heading)
-- 7A=StartRotation:d(CharId)d(Degree)d(Side)d(speed)
-- 7B=ShowBoard:c(show)s(bbshome)s(bbsgetfav)s(bbsloc)s(bbsclan)s(bbsmemo)s(bbsmail)s(bbsfriends)s(bbs_add_fav)s(curPage)
-- 7C=ChooseInventoryItem:d(ItemID:Get.F0)
-- 7E=MoveToLocationInVehicle:d(CharID)d(BoatObjID)d(ToX)d(ToY)d(ToZ)d(OrigX)d(OrigY)d(OrigZ)
-- 7F=StopMoveInVehicle:d(CharID)d(BoatObjID)d(X)d(Y)d(Z)d(Heading)
-- 80=ValidateLocationInVehicle:d(CharID)d(ObjID)d(X)d(Y)d(Z)d(Heading)
-- 82=TradeOtherDone:
-- 83=FriendAddRequest:s(RequestorName)d(0)
-- 84=LeaveWorld:
-- 85=MagicEffectIcons:h(ListCount:Loop.01.0003)d(skillID:Get.Skill)h(SkillLevel)d(Duration)
-- 86=QuestList:h(count:Loop.01.0002)d(QuestId)d(Cond)z(0128)
-- 87=EnchantResult:d(Result)d(crystal)q(count)
-- 88=PledgeShowMemberListDeleteAll:
-- 89=PledgeInfo:d(ClanID)s(ClanName)s(AllyName)
-- 8C=Ride:d(ObjectID)d(Mount)d(RideType)d(RideClassId)d(X)d(Y)d(Z)
-- 8E=PledgeShowInfoUpdate:d(clanID)d(crestID)d(clanLevel)d(hasCastle)d(hasHideOut)d(hasFort)d(Rank)d(ReputationScore)d(:)d(:)d(allyID)s(allyName)d(allyCrestID)d(hasWar)
-- 90=AcquireSkillList:d(SkillType:SV0)d(count:Loop.01.0007)d(skillID:Get.Skill)d(NextLevel)d(MaxLevel)d(SpCost)d(Requirements)v(notSubUnit:LV0.ExNE.3.hskip.1)d(SubUnit)
-- 91=AcquireSkillInfo:d(skillID:Get.Skill)d(Level)d(SpCost)d(Mode)d(count:Loop.01.0004)d(Type)d(ItemID:Get.F0)q(Count)d(Requirements)
-- 92=ServerObjectInfo:d(charOID)d(ID:Get.NpcId)s(name)d(isAttackable)d(x)d(y)d(z)d(heading)f(moveMult)f(ASpdMult)f(collisionRad)f(collisionHeight)d(curHP)d(maxHP)d(objType)d(SpecEffects)
-- 93=GMHide:d(mode)
-- 94=AcquireSkillDone:
-- 95=GMViewCharacterInfo:d(X)d(Y)d(Z)d(Heading)d(ObjectID)s(Name)d(Race)d(Sex)d(ClassID:Get.ClassID)d(Level)q(Exp)d(STR)d(DEX)d(CON)d(INT)d(WIT)d(MEN)d(MaxHP)d(CurHP)d(MaxMP)d(CurMP)d(SP)d(CurLoad)d(MaxLoad)d(PkKills)d(Under)d(REar)d(LEar)d(Neck)d(RRing)d(LRing)d(Head)d(RHand)d(LHand)d(Gloves)d(Chest)d(Legs)d(Feet)d(Back)d(LRHand)d(Hair)d(Hair2)d(RBrace)d(LBrace)d(DEC1)d(DEC2)d(DEC3)d(DEC4)d(DEC5)d(DEC6)d(Belt)d(Under:Get.F0)d(REar:Get.F0)d(LEar:Get.F0)d(Neck:Get.F0)d(RRing:Get.F0)d(LRing:Get.F0)d(Head:Get.F0)d(RHand:Get.F0)d(LHand:Get.F0)d(Gloves:Get.F0)d(Chest:Get.F0)d(Legs:Get.F0)d(Feet:Get.F0)d(Back:Get.F0)d(LRHand:Get.F0)d(Hair:Get.F0)d(Hair2:Get.F0)d(RBrace:Get.F0)d(LBrace:Get.F0)d(DEC1:Get.F0)d(DEC2:Get.F0)d(DEC3:Get.F0)d(DEC4:Get.F0)d(DEC5:Get.F0)d(DEC6:Get.F0)d(Belt:Get.F0)d(AUnder:Get.F1)d(AREar:Get.F1)d(ALEar:Get.F1)d(ANeck:Get.F1)d(ARRing:Get.F1)d(ALRing:Get.F1)d(AHead:Get.F1)d(ARHand:Get.F1)d(ALHand:Get.F1)d(AGloves:Get.F1)d(AChest:Get.F1)d(ALegs:Get.F1)d(AFeet:Get.F1)d(ABack:Get.F1)d(ALRHand:Get.F1)d(AHair:Get.F1)d(AHair2:Get.F1)d(ARBrace:Get.F1)d(ALBrace:Get.F1)d(ADEC1:Get.F1)d(ADEC2:Get.F1)d(ADEC3:Get.F1)d(ADEC4:Get.F1)d(ADEC5:Get.F1)d(ADEC6:Get.F1)d(ABelt:Get.F1)d(talismanSlots)d(cloakStatus)d(PAtk)d(AtkSpd)d(PDef)d(Evasion)d(Accuracy)d(CritRate)d(MAtk)d(CastSpd)d(AtkSpd)d(MDef)d(PvpFlag)d(Karma)d(RunSpd)d(WalkSpd)d(SwimRunSpd)d(SwimWalkSpd)d(FlRunSpd)d(FlWalkSpd)d(FlyRunSpd)d(FlyWalkSpd)f(MoveMult)f(ASpdMult)f(CollisionRadius)f(CollisionHeight)d(HairStyle)d(HairColor)d(Face)d(isGM)s(Title)d(ClanID)d(ClanCrestID)d(AllyID)c(MounType)c(PrivateStoreType)c(isDwarvenCraft)d(pkKills)d(pvpKills)h(RecomLeft)h(RecomHave)d(ClassID:Get.ClassID)d(SpecEffects)d(MaxCP)d(CurrCP)c(isRunning)c(321)d(PledgeClass)c(isNoble)c(isHero)d(NameColor:Get.FCol)d(TitleColor:Get.FCol)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)d(Fame)d(Vitality)
-- 96=GMViewPledgeInfo:s(CharName)d(ClanID)d(0)s(ClanName)s(ClanLeaderName)d(CrestID)d(Level)d(HasCastle)d(HasHideOut)d(hasFortress)d(Rank)d(ReputationScore)d(0)d(0)d(AllyID)s(AllyName)d(AllyCrestID)d(isAtWar)d(:)d(MembersCount:Loop.01.0007)s(MemberName)d(MemberLevel)d(ClassID:Get.ClassID)d(Sex)d(Race)d(onlineObjID)d(Sponsor)
-- 97=GMViewSkillInfo:s(CharName)d(count:Loop.01.0005)d(isPassive)d(SkillLevel)d(skillID:Get.Skill)c(isDisabled)c(isEnchantable)
-- 99=GMViewQuestInfo:s(CharName)h(count:Loop.01.0002)d(QuestID)d(Cond)
-- 9A=GMViewItemList:s(PlayerName)d(InventoryLimit)h(shown)h(count:Loop.01.0024)d(ObjectID)d(ItemID:Get.F0)d(LocationSlot)q(Count)h(Type2)h(CustomType1)h(isEquipped)d(BodyPart)h(EnchantLevel)h(CustomType2)d(AugmentID:Get.F1)d(Mana)d(remainTime)h(AttackElem)h(AttackElemVal)h(DefAttrFire)h(DefAttrWater)h(DefAttrWind)h(DefAttrEarth)h(DefAttrHoly)h(DefAttrUnholy)h(enchEff1)h(enchEff2)h(enchEff3)
-- 9B=GMViewWarehouseWithdrawList:s(PlayerName)q(Money)h(count:Loop.01.0025)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(Type2)h(CustomType1)h(isEquip)d(BodyPart)h(EnchantLevel)h(custType2)d(AugmentID:Get.F1)d(Mana)d(remainTime)h(AttackElem)h(AttackElemVal)h(DefAttrFire)h(DefAttrWater)h(DefAttrWind)h(DefAttrEarth)h(DefAttrHoly)h(DefAttrUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)d(ObjID)
-- 9C=ListPartyWating:d(isSize)d(count:Loop.01.0008)d(ObjID)s(Title)d(location)d(minLvl)d(maxLvl)d(members)d(maxMembers)s(ownerName)
-- 9D=PartyMatchDetail:d(roomID)d(maxMembers)d(minLvl)d(maxLvl)d(lootType)d(location)s(roomTitle)
-- 9E=PlaySound:d(type)s(SoundFile)d(type)d(shipID)d(x)d(y)d(z)d(:)
-- 9F=StaticObject:d(StaticObjectID)d(ObjectID)d(Type)d(isTargetable)d(MeshIndex)d(isClosed)d(isEnemy)d(CurrentHP)d(MaxHP)d(isSHowHP)d(DamageGrade)
-- A0=PrivateStoreManageListSell:d(ObjID)d(isPackage)q(Money) //12
--d(tradeList:Loop.01.0025)d(ObjectID) //8 20
--d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(isEquip) //22 42
--d(BodyPart)h(enchantLvl)h(custType2)d(augment:Get.F1)d(mana) // 16 58
--d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth) //14 72
--h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)q(refPrice)// 18 92


-- A1=PrivateStoreListSell:d(PlayerObjID)d(isPackageSale)q(Money) //16
--d(ItemsCount:Loop.01.0026)d(ObjectID) // 8 24
--d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(0)d(BodyPart) // 26 50
--h(enchantLvl)h(custType2)d(augment:Get.F1) //8 58
--d(mana)d(remainTime) // 8 66
--h(AttackElem)h(AttackElemPower) //4 70
--h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly) //10 80
--h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)q(price)q(refPrice) //24 104
-- A2=PrivateStoreMsgSell:d(ObjectID)s(StoreMsg)
-- A3=ShowMiniMap:d(MapID)c(SevenSignsPeriod)
-- A6=TutorialShowHtml:s(Html)
-- A7=TutorialShowQuestionMark:d(Blink)
-- A8=TutorialEnableClientEvent:d(eventId)
-- A9=TutorialClose:
-- AF=AllyCrest:d(CrestID)b(CrestAlly)
-- B1=PetStatusShow:d(SummonType)
-- B2=PetInfo:d(SummonType)d(ObjectID)d(SummonNpcID:Get.NpcId)d(isAttackable)d(X)d(Y)d(Z)d(Heading)d(0)d(CastSpd)d(AtkSpd)d(RunSpd)d(WalkSpd)d(SwimRunSpd)d(SwimWalkSpd)d(FlRunSpd)d(FlWalkSpd)d(FlyRunSpd)d(FlyWalkSpd)f(MoveMult)f(ASpdMult)f(CollisionRadius)f(CollisionHeight)d(Rhand:Get.F0)d(Body:Get.F0)d(LHand:Get.F0)c(nameAbove)c(isRunning)c(isInCombat)c(isAlikeDead)c(isSummoned)s(Name)s(Title)d(1)d(PvpFlag)d(Karma)d(CurrFed)d(MaxFed)d(CurrHP)d(MaxHP)d(CurrMP)d(MaxMP)d(SP)d(Level)q(Exp)q(ExpForThisLevel)q(ExpForNextLevel)d(CurrLoad)d(MaxLoad)d(PAtk)d(PDef)d(MAtk)d(MDef)d(Accuracy)d(Evasion)d(CritRate)d(RunSpd)d(AtkSpd)d(CastSpd)d(abnormalEffects)h(isRide)c(0)h(0)c(Team)d(SoulShotsPerHit)d(SpiritShotsPerHit)d(form)d(specEffect)
-- B3=PetItemList:h(count:Loop.01.0024)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(Type2)h(custType1)h(isEquipped)d(BodyPart)h(Enchant)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)
-- B4=PetInventoryUpdate:h(count:Loop.01.0025)h(Change)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(Type2)h(custType1)h(isEquipped)d(BodyPart)h(Enchant)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)
-- B6=PetStatusUpdate:d(SummonType)d(ObjectID)d(X)d(Y)d(Z)s(Title)d(CurrentFed)d(MaxFed)d(CurrenHP)d(MaxHP)d(CurrenMP)d(MaxMP)d(Level)q(Exp)q(ExpForThisLevel)q(ExpForNextLevel)
-- B7=PetDelete:d(PetID)d(PetObjectID)
-- B9=MyTargetSelected:d(ObjectID)h(Color)d(0)
-- BA=PartyMemberPosition:d(Count:Loop.01.0004)d(ObjectID)d(X)d(Y)d(Z)
-- BB=AskJoinAlly:d(RequestorObjID)s(RequestorName)
-- BD=PrivateStoreManageListBuy:d(ObjID)q(Money)d(count:Loop.01.0025)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(isEquip)d(BodyPart)h(enchantLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)q(refPrice)d(buyList:Loop.01.0027)d(ObjectID)d(ItemID:Get.F0)d(Slot)q(Count)h(type2)h(custType1)h(isEquip)d(BodyPart)h(enchantLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)q(price)q(refPrice)q(Count)
-- BE=PrivateStoreListBuy:d(PlayerID)q(Money)
--d(ItemsCount:Loop.01.0028)d(ObjectID) 8
--d(ItemID:Get.F0)d(Slot)q(Count)h(type2)18
--h(custType1)h(0)d(BodyPart)h(enchantLvl)h(custType2) 12
--d(augment:Get.F1)d(mana)d(remainTime)h(AttackElem) 14
--h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind) 8
--h(DefEarth)h(DefHoly)h(DefUnholy) 6
--h(enchEff1)h(enchEff2)h(enchEff3)d(objID)  10
--q(price)q(refPrice)q(StoreCnt) 24
-- BF=PrivateStoreMsgBuy:d(ObjectID)s(StoreMsg)
-- C0=VehicleStarted:d(ObjectId)d(state)
-- C7=SkillCoolTime:d(listSize:Loop.01.0004)d(skillID:Get.Skill)d(skillLvl)d(reuseDelay)d(timeRemain)
-- C8=PackageToList:d(count:Loop.01.0002)d(ObjID)s(Name)
-- C9=SiegeInfo:d(CastleID)d(isClanLeader)d(OwnerID)s(name)s(ClanLeaderName)d(AllyID)s(AllyName)d(Time)d(Siege_Time)d(numOfChoice)
-- CA=SiegeAttackerList:d(CastleID)d(0)d(1)d(0)d(count)d(count:Loop.01.0009)d(ClanID)s(clanName)s(leaderName)d(crestID)d(0)d(allyID)s(allyName)s(allyLeader)d(allyCrestID)
-- CB=SiegeDefenderList:d(CastleID)d(0)d(1)d(0)d(count)d(count:Loop.01.0010)d(ClanID)s(clanName)s(leaderName)d(crestID)d(signedTime)d(SiegeType)d(allyID)s(allyName)s(allyLeader)d(allyCrestID)
-- CC=NicknameChanged:d(ObjectID)s(Title)
-- CD=PledgeStatusChanged:d(LeaderID)d(ClanID)d(CrestID)d(AllyID)d(AllyCrest)d(:)d(:)
-- CE=RelationChanged:d(count:Loop.01.0005)d(ObjectID)d(Relation)d(AutoAttackable)d(Karma)d(PvpFlag)
-- CF=OnEventTrigger:d(emitterID)d(isClosed)
-- D0=MultiSellList:d(ListId)d(Page)d(Finished)d(PageSize=28)d(EntryCount:Loop.01.0040)d(EntryID)c(isStackable)h(0)d(0)d(0)h(-2)z(0014h*7)h(ProductCount:SV0)h(IngredientCount:SV1)v(ProductList:LV0.Loop.01.0015)d(ItemID:Get.F0)d(BodyPart)h(type2)q(count)h(enchLvl)d(augmID:Get.F1)d(mana)h(ElemID)h(ElemPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)v(IngredientsList:LV1.Loop.01.0014)d(ItemID:Get.F0)h(type2)q(count)h(enchLvl)d(augmID:Get.F1)d(mana)h(ElemID)h(ElemPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)
-- D1=SetSummonRemainTime:d(MaxTime)d(RemainingTime)
-- D2=PackageSendableList:d(ObjectID)q(Money)d(ItemsCount:Loop.01.0019)h(Type1)d(ObjectID)d(ItemID:Get.F0)q(Count)h(Type2)h(CustomType1)d(BodyPart)h(Enchant)h(0)h(CustomType2)d(ObjectID)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)
-- D3=Earthquake:d(X)d(Y)d(Z)d(intensity)d(Duration)d(0)
-- D4=FlyToLocation:d(ObjectID)d(ToX)d(ToY)d(ToZ)d(OrigX)d(OrigY)d(OrigZ)d(FlyType)
-- D6=SpecialCamera:d(_id)d(Distantion)d(Yaw)d(Pitch)d(Time)d(Duration)d(turn)d(rise)d(widescreen)d(:)
-- D7=NormalCamera:
-- D9=NetPing:d(kID)
-- DA=Dice:d(CharID)d(ItemID:Get.F0)d(Number)d(X)d(Y)d(Z)
-- DB=Snoop:d(ConvoID)s(Name)d(0)d(Type)s(Speaker)s(Msg)
-- DC=RecipeBookItemList:d(isDwarvenCraft)d(MaxMP)d(RecipesCount:Loop.01.0002)d(RecipeID:Get.F3)d(num)
-- DD=RecipeItemMakeInfo:d(OID)d(isDwarvenRecipe)d(CurrentMP)d(MaxMP)d(isSuccess)
-- DE=RecipeShopManageList:d(ObjectID)d(Money)d(IsDwarven)d(count:Loop.01.0002)d(RecipeID:Get.F3)d(num)d(count:Loop.01.0003)d(RecipeID:Get.F3)d(0)q(Cost)
-- DF=RecipeShopSellList:d(ObjectID)d(CurrMP)d(max_MP)q(Money)d(count:Loop.01.0003)d(RecipeID:Get.F3)d(0)q(Cost)
-- E0=RecipeShopItemInfo:d(ShopID)d(RecipeID:Get.F3)d(CurrentMP)d(MaxMP)d(:)
-- E1=RecipeShopMsg:d(ObjectID)s(StoreName)
-- E2=ShowCalculator:d(CalculatorID)
-- E3=MonRaceInfo:d(:)d(:)d(Count:Loop.01.0014)d(MonsterObjID)d(NpcID:Get.NpcId)d(OrigX)d(OrigY)d(OrigZ)d(EndX)d(EndY)d(EndZ)f(CollisionHeight)f(CollisionRadius)d(120)z(0020speeds)d(0)d(specEffects)
-- E4=HennaItemDrawInfo:d(SymbolID)d(ItemDyeID)q(DyeRequire)q(Price)d(Draw)q(Adena)d(INT)c(INT+Henna)d(STR)c(STR+Henna)d(CON)c(CON+Henna)d(MEN)c(MEN+Henna)d(DEX)c(DEX+Henna)d(WIT)c(WIT+Henna)
-- E5=HennaInfo:c(INT)c(STR)c(CON)c(MEN)c(DEX)c(WIT)d(slots)d(SlotCount:Loop.01.0002)d(SymbolID)d(01)
-- E6=HennaRemoveList:q(money)d(0)d(slots:Loop.01.0007)d(symbolID)d(ItemIDdye:Get.F0)d(dyeRequired)d(0)d(price)d(0)d(1)
-- E7=HennaItemRemoveInfo:d(symbolID)d(ItemIDdye:Get.F0)q(dyeRequired)q(price)d(1)q(money)d(INT)c(INT+Henna)d(STR)c(STR+Henna)d(CON)c(CON+Henna)d(MEN)c(MEN+Henna)d(DEX)c(DEX+Henna)d(WIT)c(WIT+Henna)
-- E8=SendMacroList:d(Revision)c(0)c(Count:SV0)c(isCheck:LV0:ExEQ.0.skip.11)d(MacroID)s(Name)s(Descr)s(Acronym)c(Icon)c(Lenght:Loop.01.0005)c(Idx)c(Type)d(subjID)c(ShortCutID)s(CmdName)
-- E9=BuyListSeed:q(Money)d(ManorID)h(count:Loop.01.0025)d(ItemID:Get.F0)d(ItemID:Get.F0)d(0)q(Count)h(custType2)h(custType1)h(isequip)d(bodyPart)h(enchantLvl)h(custType)d(augm:Get.F1)d(mana)d(remainTime)h(AttackElem)h(AttackElemPower)h(DefFire)h(DefWater)h(DefWind)h(DefEarth)h(DefHoly)h(DefUnholy)h(enchEff1)h(enchEff2)h(enchEff3)q(price)
-- EA=ShowTownMap:s(Texture)d(X)d(Y)
-- EB=ObservationMode:d(X)d(Y)d(Z)c(0)c(c0)c(0)
-- EC=ObservationReturn:d(X)d(Y)d(Z)
-- ED=ChairSit:d(CharID)d(StaticObjectID)
-- EE=HennaEquipList:q(Money)d(Slots)d(count:Loop.01.0005)d(SymbolID)d(ItemDyeID)q(DyeRequire)q(Price)d(isRequire)
-- EF=SellListProcure:q(Money)d(lease)h(count:Loop.01.0007)h(ItemType1)d(ObjectID)d(ItemID:Get.F0)q(Count)h(ItemType2)h(0)q(Price)
-- F0=GMHennaInfo:c(INT)c(STR)c(CON)c(MEN)c(DEX)c(WIT)d(slots)d(SlotCount:Loop.01.0002)d(SymbolID)d(01)
-- F1=RadarControl:d(ShowRadar)d(Type)d(X)d(Y)d(Z)
-- F2=ClientSetTime:d(gameTime)d(clientSpeed)
-- //F3=ConfirmDlg:d(MsgID:Get.MsgID)d(typesCount:Loop.01.0027)d(type:SV0)v(caseTypeText:LV0.ExNE.0.Hskip.2)s(text)v(.:EV0:hskip.0)v(caseTypePText:LV0.ExNE.12.Hskip.2)s(text)v(.:EV0:hskip.0)v(caseTypeNpc:LV0.ExNE.2.Hskip.2)d(NpcID:Get.NpcId)v(.:EV0:hskip.0)v(caseTypeItem:LV0.ExNE.3.Hskip.2)d(ItemID:Get.F0)v(.:EV0:hskip.0)v(caseTypeSkill:LV0.ExNE.4.Hskip.3)d(skillID:Get.Skill)d(skillLvl)v(.:EV0:hskip.0)v(caseTypeItemNumb:LV0.ExNE.6.Hskip.2)q(value)v(.:EV0:hskip.0)v(caseTypeZone:LV0.ExNE.7.Hskip.4)d(x)d(y)d(z)v(.:EV0:hskip.0)v(caseOther:LV0.ExEQ.-1.hskip.1)d(value_or_id)d(time)d(requesterID)
-- //phx
-- F3=ConfirmDlg:d(messageId:Get.MsgID)d(size:Loop.1.1)d(type:switch.0.8)_(TYPE_TEXT:case.0.1)s(String)_(TYPE_NUMBER:case.1.1)d(t1)_(TYPE_NPC_NAME:case.2.1)d(t1:Get.NpcID)_(TYPE_ITEM_NAME:case.3.1)d(ItemID:Get.Func01)_(TYPE_UNKNOWN_5:case.5.1)d(t1)_(TYPE_SKILL_NAME:case.4.2)d(skill_id:Get.SkillID)d(skill_level)_(TYPE_LONG:case.6.1)q(t1)_(TYPE_ZONE_NAME:case.7.3)d(coord.x)d(coord.y)d(coord.z)d(Time)d(requestId)
-- F4=PartySpelled:d(isSummon)d(ObjecID)d(EffectSize:Loop.01.0003)d(skillID:Get.Skill)h(SkillLevel)d(Duration)
-- F5=ShopPreviewList:c(c0)c(13)c(0)c(0)q(Money)d(ListID)h(count:Loop.01.0004)d(ItemID:Get.F0)h(Type2)h(BodyPart)q(WearPrice)
-- F6=ShopPreviewInfo:d(totalSlot)d(Under:Get.F0)d(Rear:Get.F0)d(Lear:Get.F0)d(Neck:Get.F0)d(RRing:Get.F0)d(LRing:Get.F0)d(Head:Get.F0)d(RHand:Get.F0)d(LHand:Get.F0)d(Gloves:Get.F0)d(Chest:Get.F0)d(Legs:Get.F0)d(Boots:Get.F0)d(Cloak:Get.F0)d(LRHand:Get.F0)d(Hair:Get.F0)d(Hair2:Get.F0)d(RBrace:Get.F0)d(LBrace:Get.F0)
-- F7=CameraMode:d(Mode):d(Mode)
-- F8=ShowXMasSeal:d(Item):d(item)
-- F9=EtcStatusUpdate:d(Charges)d(WeightPenalty)d(isChatBanned)d(isDangerArea)d(ExpertiseWeapPenalty)d(ExpertArmorPenalty)d(CharmOfCourage)d(DeathPenaltyLevel)d(Souls)
-- FA=ShortBuffStatusUpdate:d(SkillID:Get.Skill)d(SkillLevel)d(Duration)
-- FB=SSQStatus:h(psize)c(ID)c(Page:SV0)c(CurrentPeriod)v(casePage1:LV0.ExNE.1.Hskip.16)d(CurrentCycle)d(CurrentPeriod:Get.MsgID)d(Time:Get.MsgID)c(PlayerCabal)c(PlayerSeal)q(PlStoneContrib)q(PlAncAdena)q(duskSealStone)q(duskFestScore)q(duskTotalScore)c(duskPercent)q(dawnSealStone)q(dawnFestScore)q(dawnTotalScore)c(dawnPercent)v(.:EV0:hskip.0)v(casePage2:LV0.ExNE.2.Hskip.11)h(1)c(Festivals:Loop.01.008)c(festival)d(LVLScore)q(duskScore)c(membersCount:Loop.01.0001)s(memberName)q(dawnScore)c(membersCount:Loop.01.0001)s(memberName)v(.:EV0:hskip.0)v(casePage3:LV0.ExNE.3.Hskip.8)c(limitRetain)c(limitClaim)c(TotalSeals:Loop.01.004)c(Seal)c(SealOwner)c(duskProportion)c(dawnProportion)v(.:EV0:hskip.0)v(casePage4:LV0.ExNE.4.Hskip.6)c(winningCabal)c(TotalSeals:Loop.01.003)c(Seal)c(Cabal)d(msg2:Get.MsgID)v(.:EV0:hskip.0)
-- FD=AgitDecoInfo:d(hallID)c(HPrecoverFireplace)c(MPrecoverCarpet)c(MPrecoverStatue)c(hallEXPrecover)c(hasTeleport)c(Crystal)c(Curtain)c(ItemCreate)c(hasSupport)c(hasSuport)c(has_platform)c(has_itemcreate)d(0)d(0)
-- //[GS_T25] server two ID packets:    // :h(subID)
-- FE01=ExRegMax:h(subID)d(1)d(Count)d(Time)f(Max)
-- FE08=ExPartyRoomMember:h(subID)d(mode)d(members:Loop.01.0006)d(objID)s(name)d(class:Get.ClassID)d(level)d(location)d(isOwnerOrInParty)
-- FE09=ExClosePartyRoom:h(subID)
-- FE0A=ExManagePartyRoomMember:h(subID)d(mode)d(objID)s(name)d(class:Get.ClassID)d(level)d(location)d(isOwnerOrInParty)
-- FE0C=ExAutoSoulShot:h(subID)d(ItemID:Get.F0)d(Type)
-- FE0F=ExEventMatchMessage:h(subID)c(type)s(message)
-- FE12=ExOpenMPCC:h(subID)
-- FE13=ExCloseMPCC:h(subID)
-- FE14=ExShowCastleInfo:h(subID)d(CastlesSize:Loop.01.0004)d(CastleID)s(CastleName)d(TaxPercent)d(Time)
-- FE15=ExShowFortressInfo:h(subID)d(listSize:Loop.01.0004)d(FortID)s(OwnerClan)d(IsInProgress)d(PossessionTime)
-- FE16=ExShowAgitInfo:h(subID)d(ClanHallsSize:Loop.01.0004)d(ClanHallID)s(HallName)s(LeaderName)d(Grade)
-- FE17=ExShowFortressSiegeInfo:h(subID)d(FortID)d(size:Loop.01.0001)d(status)
-- FE18=ExPartyPetWindowAdd:h(subID)d(SummonObjID)d(NpcID:Get.NpcId)d(SummonType)d(OwnerID)s(SummonName)d(CurrentHP)d(MaxHP)d(CurrentMP)d(MaxMP)d(Level)
-- FE19=ExPartyPetWindowUpdate:h(subID)d(SummonObjID)d(NpcID:Get.NpcId)d(SummonType)d(OwnerID)s(SummonName)d(CurrentHP)d(MaxHP)d(CurrentMP)d(MaxMP)d(Level)
-- FE1A=ExAskJoinMPCC:h(subID)s(RequestorName)
-- FE1B=ExPledgeCrestLarge:h(subID)d(0)d(CrestID)b(Crest)
-- FE1E=ExFishingStart:h(subID)d(ObjectID)d(FishType)d(X)d(Y)d(Z)c(isNightLure)c(0)c(isNightLure)c(0)
-- FE1F=ExFishingEnd:h(subID)d(CharID)c(isWin)
-- FE20=ExShowQuestInfo:h(subID)
-- FE21=ExShowQuestMark:h(subID)d(QuestID)
-- FE22=ExSendManorList:h(subID)d(ListCount:Loop.01.0002)d(idx)s(Manor)
-- FE23=ExShowSeedInfo:h(subID)c(0)d(ManorID)d(0)d(SeedsSize:Loop.01.0009)d(SeedID:Get.F0)q(leftToBuy)q(StartProduce)q(sellPrice)d(SeedLevel)c(1)d(RewardItemBySeed:Get.F0)c(1)d(RewardItemBySeed:Get.F0)
-- FE24=ExShowCropInfo:h(subID)c(0)d(ManorID)d(0)d(CropsSize:Loop.01.0010)d(CropID:Get.F0)q(CropAmount)q(StartAmount)q(Price)c(Reward)d(SeedLevelByCrop)c(1)d(RewardItemCrop:Get.F0)c(1)d(RewardItemCrop2:Get.F0)
-- FE25=ExShowManorDefaultInfo:h(subID)c(0)d(CropsSize:Loop.01.0008)d(CropID)d(SeedLevelByCrop)d(SeedBasicPriceByCrop)d(CropBasicPrice)c(1)d(RewardItem1:Get.F0)c(1)d(RewardItem2:Get.F0)
-- FE26=ExShowSeedSetting:h(subID)d(manorID)d(size:Loop.01.0014)d(seedID)d(Level)c(1)d(rewardID1:Get.F0)c(2)d(rewardID2:Get.F0)d(nextSaleLimit)d(price)d(minSeedPrice)d(maxSeedPrice)q(todaySales)q(todayPrice)q(nextSales)q(nextPrice)
-- FE27=ExFishingStartCombat:h(subID)d(ObjectID)d(Time)d(HP)c(Mode)c(LureType)c(DeceptiveMode)
-- FE28=ExFishingHPRegen:h(subID)d(ObjectID)d(Time)d(FishHP)c(HPstop/Rise)c(GoodUse)c(Anim)d(Penalty)c(BarColor)
-- FE29=ExEnchantSkillList:h(subID)d(Type)d(count:Loop.01.0002)d(skillID:Get.Skill)d(NextLevel)
-- FE2A=ExEnchantSkillInfo:h(subID)d(skillID:Get.Skill)d(Level)d(isNotMaxEnchanted)d(isEnchanted)d(routesSize:Loop.01.0001)d(lvl)
-- FE2B=ExShowCropSetting:h(subID)d(manorID)d(size:Loop.01.0016)d(cropID)d(seedLevel)c(1)d(rewardID1:Get.F0)c(1)d(rewardID2:Get.F0)d(nextSaleLimit)d(count)d(minCropPrice)d(maxCropPrice)q(todayBuy)q(todayPrice)c(todayReward)q(nextBuy)q(nextPrice)c(nextReward)
-- FE2C=ExShowSellCropList:h(subID)d(ManorId)d(CropCount:Loop.01.0012)d(ObjectID)d(CropID:Get.F0)d(cropLevel)c(1)d(RewardItemCrop:Get.F0)c(1)d(RewardItemCrop2:Get.F0)d(ManorID)q(CroopAmount)q(BuyPrice)c(reward)q(myCropsCount)
-- FE2D=ExOlympiadMatchEnd:h(subID)
-- FE2E=ExMailArrived:h(subID)
-- FE2F=ExStorageMaxCount:h(subID)d(InventoryLimit)d(WareHouseLimit)d(FreightLimit)d(PrivSellStoreLimit)d(PrivBuyStoreLimit)d(DwarfRecipeLimit)d(CommonRecipeLimit)d(invExtraSlots)d(invQuestItems)
-- FE31=ExMultiPartyCommandChannelInfo:h(subID)s(chanOwnerName)d(chanLoot)d(membCount)d(partysSize:Loop.01.0003)s(leaderName)d(leaderOID)d(membCount)
-- FE32=ExPCCafePointInfo:h(subID)d(numPoints)d(pointsInc)c(period)d(periodHoursLeft)c(pointIncColor)
-- FE33=ExSetCompassZoneCode:h(subID)d(ZoneType)
-- FE34=ExGetBossRecord:h(subID)d(rank)d(totalPoints)d(ListSize:Loop.01.0003)d(bossID:Get.NpcId)d(points)d(:)
-- FE35=ExAskJoinPartyRoom:h(subID)s(CharName)
-- FE36=ExListPartyMatchingWaitingRoom:h(subID)d(1)d(membersSize:Loop.01.0003)s(name)d(class:Get.ClassID)d(level)
-- FE38=ExShowAdventurerGuideBook:h(subID)
-- FE39=ExShowScreenMessage:h(subID)d(type)d(sysMessageId)d(position)d(:)d(size)d(:)d(:)d(hasEffect)d(time)d(:)d(:)s(text)
-- FE3A=PledgeSkillList:h(subID)d(skillList:Loop.02.0002)d(subSkillList:SV0)d(skillID:Get.Skill)d(Level)v(subSkills:LV0.Loop.01.003)d(subType)d(skillID:Get.Skill)d(Level)
-- FE3B=PledgeSkillListAdd:h(subID)d(skillID:Get.Skill)d(Level)
-- FE3C=PledgePowerGradeList:h(subID)d(count:Loop.01.0002)d(Rank)d(Party)
-- FE3D=PledgeReceivePowerInfo:h(subID)d(MemberPowerGrade)s(MemberName)d(MemberClanRankPrivs)
-- FE3E=PledgeReceiveMemberInfo:h(subID)d(MemberPledgeType)s(MemberName)s(MemberTitle)d(MemberPowerGrade)s(ClanName)s(SponsorName)
-- FE3F=PledgeReceiveWarList:h(subID)d(Enemy/Attaker)d(0)d(count:Loop.01.0003)s(clanName)d(tab)d(tab)
-- FE40=PledgeReceiveSubPledgeCreated:h(subID)d(1)d(SubPledgeID)s(SubPledgeName)s(SubPledgeLeaderName)
-- FE41=ExRedSky:h(subID)d(Duration)
-- FE44=ShowPCCafeCouponShowUI:h(subID)
-- FE45=ExSearchOrc:h(subID)z(0064test)
-- FE46=ExCursedWeaponList:h(subID)d(count:Loop.01.0001)d(CursedWeaponID:Get.F0)
-- FE47=ExCursedWeaponLocation:h(subID)d(count:Loop.01.0005)d(CursedWeaponID:Get.F0)d(Activated)d(X)d(Y)d(Z)
-- FE48=ExRestartClient:h(subID)
-- FE49=ExRequestHackShield:h(subID)
-- FE4A=ExUseSharedGroupItem:h(subID)d(ItemID:Get.F0)d(grpID)d(remainTime)d(totalTime)
-- FE4B=ExMPCCShowPartyMemberInfo:h(subID)d(memberCount:Loop.01.0003)s(name)d(objId)d(classID:Get.ClassID)
-- FE4C=ExDuelAskStart:h(subID)s(RequestorName)d(PartyDuel)
-- FE4D=ExDuelReady:h(subID)d(:)
-- FE4E=ExDuelStart:h(subID)d(type)
-- FE4F=ExDuelEnd:h(subID)d(type)
-- FE50=ExDuelUpdateUserInfo:h(subID)s(CharName)d(ObjectID)d(ClassID:Get.ClassID)d(Level)d(CurrentHP)d(MaxHP)d(CurrentMP)d(MaxMP)d(CurrentCP)d(MaxCP)
-- FE51=ExShowVariationMakeWindow:h(subID)
-- FE52=ExShowVariationCancelWindow:h(subID)
-- FE53=ExPutItemResultForVariationMake:h(subID)d(ItemObjID)d(ItemID:Get.F0)d(1)
-- FE54=ExPutIntensiveResultForVariationMake:h(subID)d(RefinerItemObjID)d(LifeStoneItemID)d(GemStoneItemID)q(GemStoneCount)d(:)
-- FE55=ExPutCommissionResultForVariationMake:h(subID)d(GemStoneObjID)d(ItemID:Get.F0)q(GemStoneCount)d(:)d(:)d(:)
-- FE56=ExVariationResult:h(subID)d(stat12)d(stat34)d(:)
-- FE57=ExPutItemResultForVariationCancel:h(subID)d(ItemObjID)d(ItemID:Get.F0)d(Aug1:Get.F1)d(Aug2:Get.F1)q(Price)d(1)
-- FE58=ExVariationCancelResult:h(subID)d(result)d(:)
-- FE5B=ExMPCCPartyInfoUpdate:h(subID)s(leaderName)d(leaderOID)d(membCount)d(mode)
-- FE5C=ExPlayScene:h(subID)
-- FE5D=ExSpawnEmitter:h(subID)d(NpcObjID)d(CharID)d(0)
-- FE5E=ExEnchantSkillInfoDetail:h(subID)d(type)d(skillid:Get.Skill)d(skillLvl)d(SP)d(Exp)d(requiredItemCount:Loop.01.0002)d(reqItemID:Get.F0)d(itemCount)
-- FE5F=ExBasicActionList:h(subID)d(count:Loop.01.0001)d(ActionID)
-- FE60=ExAirShipInfo:h(subID)d(ObjectID)d(X)d(Y)d(Z)d(Heading)d(OIDWhoControlShip)d(MoveSpeed)d(RotationSpeed)d(helm)d(conX)d(conY)d(conZ)d(capX)d(capY)d(capZ)d(CurFuel)d(MaxFuel)
-- FE61=ExAttributeEnchantResult:h(subID)d(result)
-- FE62=ExChooseInventoryAttributeItem:h(subID)d(ItemID:Get.F0)d(fire)d(water)d(wind)d(earth)d(holy)d(unholy)d(lvl)
-- FE63=ExGetOnAirShip:h(subID)d(playerID)d(shipID)d(x)d(y)d(z)
-- FE64=ExGetOffAirShip:h(subID)d(playerID)d(shipID)d(x)d(y)d(z)
-- FE65=ExMoveToLocationAirShip:h(subID)d(airShipId)d(dX)d(dY)d(dZ)d(x)d(y)d(z)
-- FE66=ExStopMoveAirShip:h(subID)d(airShipId)d(X)d(Y)d(Z)d(heading)
-- FE67=ExShowTrace:h(subID)h(traceSize:Loop.01.0004)d(x)d(y)z(d)h(time)
-- FE68=ExItemAuctionInfoPacket:h(subID)c(notRefresh)d(instanceID)q(highestBid)d(remainTime)d(itemID:Get.F0)d(itemID:Get.F0)d(slot)q(count)h(type2)h(custType1)h(0)d(bodyPart)h(enchLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)q(nextAucInitBid)d(nextAucStartTime)d(itemID:Get.F0)d(itemID:Get.F0)d(slot)q(count)h(type2)h(custType1)h(0)d(bodyPart)h(enchLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)
-- FE69=ExNeedToChangeName:h(subID)d(type)d(subType)s(Name)
-- FE6A=ExPartyPetWindowDelete:h(subID)d(SummonObjID)d(OwnerID)s(Name)
-- FE6C=ExRpItemLink:h(subID)d(ObjID)d(ItemID:Get.F0)d(slot)q(count)h(type2)h(custType1)h(0)d(Bodypart)h(enchLvl)h(custype2)d(Augm:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEffect1)h(enchEffect2)h(enchEffect3)
-- FE6D=ExMoveToLocationInAirShip:h(subID)d(charOID)d(airShipId)d(destX)d(destY)d(destZ)d(destHeading)
-- FE6E=ExStopMoveInAirShip:h(subID)d(charOID)d(airShipId)d(charDestX)d(charDestY)d(charDestZ)d(charDestHeading)
-- FE6F=ExValidateLocationInAirShip:h(subID)d(charOID)d(airShipId)d(X)d(Y)d(Z)d(charHeading)
-- FE70=ExUISetting:h(subID)d(bufsize)d(categories)d(count:Loop.01.0010)c(catList1:Loop.01.0001)c(cmd)c(catList2:Loop.01.0001)c(cmd)d(keyList:Loop.01.0005)d(cmdID)d(keyID)d(toogleKey1)d(toogleKey2)d(showStatus)d(11)d(10)
-- FE74=ExShowBaseAttributeCancelWindow:h(subID)d(itemCount:Loop.01.0002)d(objID)q(price)
-- FE75=ExBaseAttributeCancelResult:h(subID)d(result)d(objID)d(attrib)
-- FE76=ExSubPledgeSkillAdd:h(subID)d(type)d(skillID:Get.Skill)d(skillLvl)
-- FE78=ExShowProcureCropDetail:h(subID)d(CropID)d(CastleCropsSize:Loop.01.0004)d(ManorID)q(CropAmount)q(CropPrice)c(CropReward)
-- FE79=ExHeroList:h(subID)d(count:Loop.01.0007)s(HeroName)d(ClassID:Get.ClassID)s(ClanName)d(ClanCrest)s(AllyName)d(AllyCrest)d(Count)
-- FE7A=ExOlympiadUserInfo:h(subID)c(Side)d(ObjectID)s(Name)d(ClassID:Get.ClassID)d(CurrentHP)d(MaxHP)d(CurrentCP)d(MaxCP)
-- FE7B=ExOlympiadSpelledInfo:h(subID)d(PlayerID)d(count:Loop.01.0003)d(skillID:Get.Skill)h(level)d(Duration)
-- FE7C=ExOlympiadMode:h(subID)c(Mode)
-- FE7D=ExShowFortressMapInfo:h(subID)d(fortID)d(fortSiegeStat)d(fortSize:Loop.01.0001)d(status)
-- FE80=ExPrivateStoreSetWholeMsg:h(subID)d(ObjectID)s(Msg)
-- FE81=ExPutEnchantTargetItemResult:h(subID)d(Result)
-- FE82=ExPutEnchantSupportItemResult:h(subID)d(Result)
-- FE83=ExRequestChangeNicknameColor:h(subID)d(objID)
-- FE84=ExGetBookMarkInfoPacket:h(subID)d(0)d(bookmarkSlot)d(Size:Loop.01.0007)d(ID)d(X)d(Y)d(Z)s(Name)d(Icon)s(Tag)
-- FE85=ExNotifyPremiumItem:h(subID)
-- FE86=ExGetPremiumItemList:h(subID)d(listSize:Loop.01.0006)d(num)d(objID)d(ItemID:Get.F0)q(count)d(0)s(sender)
-- FE8D=NpcQuestHtmlMessage:h(subID)d(NpcObjId)s(Html)d(QuestId)
-- FE8E=ExSendUIEvent:h(subID)d(objID)d(isHide)d(:)d(:)s(increase)s(timerMinutes)s(timerSeconds)s(text)s(lengthMinutes)s(lengthSeconds)
-- FE8F=ExBirthdayPopup:h(subID)
-- FE90=ExShowDominionRegistry:h(subID)d(territoryID)s(ownerClan)s(ownerClanLeader)s(ownerAlly)d(clanReq)d(mercReq)d(warTime)d(currTime)d(isClanReg)d(isMercReg)d(01)d(terrCount:Loop.01.0003)d(terrID)d(emblemCount:Loop.01.0001)d(emblemID)
-- FE92=ExReplyDominionInfo:h(subID)d(terraListSize:Loop.01.0006)d(terrID)s(terrName)s(ownerClan)d(emblemCount:Loop.01.0001)d(emblemID)d(warTime)
-- FE93=ExShowOwnthingPos:h(subID)d(terraWardList:Loop.01.0004)d(terraID)d(wardX)d(wardY)d(wardZ)
-- FE99=ExStartScenePlayer:h(subID)d(movieID)
-- FE9A=ExAirShipTeleportList:h(subID)d(dockID)d(teleportsSize:Loop.01.0005)d(idx)d(fuel)d(dstX)d(dstY)d(dstZ)
-- FEA0=ExVitalityPointInfo:h(subID)d(vitalityPoints)
-- FEA1=ExShowSeedMapInfo:h(subID)d(seedCount:Loop.01.0004)d(x)d(y)d(z)d(sysMsgID)
-- FEA3=ExDominionWarStart:h(subID)d(objID)d(1)d(terrID)d(isDisguised)d(isDisgTerrID)
-- FEA4=ExDominionWarEnd:h(subID)
-- FEA7=ExEnchantSkillResult:h(subID)d(isEnchanted)
-- FEA9=ExNoticePostArrived:h(subID)d(doShowAnim)
-- FEAA=ExShowReceivedPostList:h(subID)d(systemTime)d(inboxSize:Loop.01.0011)d(msgID)s(subj)s(senderName)d(isLocked)d(expirateSecond)d(isUnread)d(01)d(hasAttachs)d(isFourStars)d(isNews)d(0)
-- //ExShowReceivedPost 
-- FEAB=ExReplyReceivedPost:h(subID)d(msgID)d(isLocked)d(0)s(senderName)s(subj)s(content)d(itemsCount:Loop.01.0025)d(objID)d(itemID:Get.F0)d(Slot)q(count)h(type2)h(custType1)h(isEquip)d(bodyPart)h(enchLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)d(ObjID)
-- FEAC=ExShowSentPostList:h(subID)d(systemTime)d(outboxSize:Loop.01.0008)d(msgID)s(subj)s(receiverName)d(isLocked)d(expirateSecond)d(isUnread)d(01)d(hasAttachs)
-- //ExShowSentPost
-- FEAD=ExReplySentPost:h(subID)d(msgID)d(isLocked)s(receiverName)s(subj)s(content)d(itemsCount:Loop.01.0025)d(objID)d(itemID:Get.F0)d(Slot)q(count)h(type2)h(custType1)h(isEquip)d(bodyPart)h(enchLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)d(objID)q(regAdena)d(isFourStars)
-- FEB2=ExReplyPostItemList:h(subID)d(itemListSize:Loop.01.0024)d(objID)d(itemID:Get.F0)d(Slot)q(count)h(type2)h(custType1)h(isEquip)d(bodyPart)h(enchLvl)h(custType2)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)
-- FEB3=ExChangePostState:h(subID)d(isReceivedBoard)d(msgSize:Loop.01.0002)d(postID)d(changeID)
-- FEB4=ExNoticePostSent:h(subID)d(doShowAnim)
-- FEBB=ExAskCoupleAction:h(subID)d(actionID)d(objID)
-- FEBC=ExBrLoadEventTopRankers:h(subID)d(eventID)d(day)d(count)d(bestScore)d(myScore)
-- FEBD=ExChangeNpcState:h(subID)d(objID)d(state)
-- FEBE=ExAskModifyPartyLooting:h(subID)s(requestor)d(mode)
-- FEBF=ExSetPartyLooting:h(subID)d(result)d(mode)
-- FEC0=ExRotation:h(subID)d(objID)d(degree)
-- FEC5=ExQuestItemList:h(subID)h(count:Loop.01.0024)d(ObjectID)d(ItemID:Get.F0)d(LocationSlot)q(Count)h(ItemType2)h(CustomType1)h(isEquipped)d(BodyPart)h(EnchantLevel)h(CustType2)d(AugmentID:Get.F1)d(Mana)d(remainTime)h(AttackElem)h(AttackElemVal)h(DefAttrFire)h(DefAttrWater)h(DefAttrWind)h(DefAttrEarth)h(DefAttrHoly)h(DefAttrUnholy)h(EnchEff1)h(enchEff2)h(enchEff3)h(blockedItems:Loop.02.0001)c(blockMode)d(blockItem)
-- FEC8=ExVoteSystemInfo:h(subID)d(recomLeft)d(recomHave)d(bonusTime)d(bonusVal)d(bonusType)
-- FECD=ExBrPremiumState:h(subID)d(objID)c(state)
-- FECE=ExBrBroadcastEventState:h(subID)d(eventID)d(eventState)d(:)d(:)d(:)d(:)d(:)s(:)s(:)
-- FECF=ExBrExtraUserInfo:h(subID)d(charOID)d(val)c(eventFlag)
-- FED0=ExBrBuffEventState:h(subID)d(type)d(value)d(state)d(endtime)
-- //[GS_T25] server four ID packets:    // :h(subID)d(sub2ID)
-- FE970000=ExCubeGameTeamList:h(subID)d(sub2ID)d(roomNumber)d(-1)d(bluePlayersCount:Loop.01.0002)d(playerObjID)d(name)d(redPlayersCount:Loop.01.0002)d(playerObjID)d(name)
-- FE970001=ExCubeGameAddPlayer:h(subID)d(sub2ID)d(-1)d(isRedTeam)d(ObjID)s(name)
-- FE970002=ExCubeGameRemovePlayer:h(subID)d(sub2ID)d(-1)d(isRedTeam)d(ObjID)
-- FE970003=ExCubeGameChangeTimeToStart:h(subID)d(sub2ID)d(seconds)
-- FE970004=ExCubeGameRequestReady:h(subID)d(sub2ID)
-- FE970005=ExCubeGameChangeTeam:h(subID)d(sub2ID)d(ObjID)d(fromRedTeam)d(fromRedTeam)
-- FE9700FF=ExCubeGameCloseUI:h(subID)d(sub2ID)
-- FE980000=ExCubeGameExtendedChangePoints:h(subID)d(sub2ID)d(timeLeft)d(bluePoints)d(redPoints)d(isRedTeam)d(ObjID)d(playerPoints)
-- FE980001=ExCubeGameEnd:h(subID)d(sub2ID)d(isRedTeamWin)
-- FE980002=ExCubeGameChangePoints:h(subID)d(sub2ID)d(timeLeft)d(bluePoints)d(redPoints)
-- FEB70000=ExBuyList:h(subID)d(sub2ID)q(money)d(buyListID)h(buyListSize:Loop.01.0025)d(itemID:Get.F0)d(itemID:Get.F0)d(0)q(curCount)h(type2)h(type1)h(isEquip)d(bodyPart)h(enchLvl)h(custType)d(augment:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)q(price*taxRate)
-- FEB70001=ExBuySellListPacket:h(subID)d(sub2ID)h(sellListSize:Loop.01.0025)d(objID)d(itemID:Get.F0)d(slot)q(curCount)h(type2)h(custType1)h(0)d(bodyPart)h(enchLvl)h(custType2)d(augm:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)q(price)h(refundListSize:Loop.01.0026)d(objID)d(itemID:Get.F0)d(0)q(curCount)h(type2)h(custType1)h(0)d(bodyPart)h(enchLvl)h(custType2)d(augm:Get.F1)d(mana)d(remainTime)h(ElementType)h(ElementPower)h(Fire)h(Water)h(Wind)h(Earth)h(Holy)h(Unholy)h(enchEff1)h(enchEff2)h(enchEff3)d(idx)q(price)c(isDone)
-- 
--PrivateStoreListSell:d(PlayerObjID)d(isPackageSale)d(Money)d(ItemsCount:Loop.01.0018) 
--d(Type2)d(ObjectID)d(ItemID:Get.Func01)d(Count)h(0)h(Enchant)h(0)
--d(BodyPart)d(Price)d(ReferencePrice)d(AttackAttrElement)d(AttackAttrElementVal)
--d(DefAttrFire)d(DefAttrWater)d(DefAttrWind)d(DefAttrEarth)d(DefAttrHoly)d(DefAttrUnholy)
-- L2Tower Packet Logger Plugin
-- @created RAID
local logFile = GetDir() .. "temp\\packets.log";
local stores = GetDir() .. "..\\stores\\";
local cpg = {
	["00"] = "Logout",
	["01"] = "AttackRequest",
	["03"] = "ReqStartPledgeWar",
	["04"] = "ReqReplyStartPledgeWar",
	["05"] = "ReqStopPledgeWar",
	["06"] = "ReqReplyStopPledgeWar",
	["07"] = "ReqSurrenderPledgeWar",
	["08"] = "ReqReplySurrenderPledgeWar",
	["09"] = "ReqSetPledgeCrest",
	["0B"] = "RequestGiveNickName",
	["0C"] = "CharacterCreate",
	["0D"] = "CharacterDelete",
	["0E"] = "ProtocolVersion",
	["0F"] = "MoveBackwardToLocation",
	["11"] = "EnterWorld",
	["12"] = "CharSelected",
	["13"] = "NewCharacter",
	["14"] = "RequestItemList",
	["16"] = "RequestUnEquipItem",
	["17"] = "RequestDropItem",
	["19"] = "UseItem",
	["1A"] = "TradeRequest",
	["1B"] = "AddTradeItem",
	["1C"] = "TradeDone",
	["1F"] = "Action",
	["22"] = "RequestLinkHtml",
	["23"] = "ReqBypassToServer",
	["24"] = "ReqBBSwrite",
	["26"] = "ReqJoinPledge",
	["27"] = "ReqAnswerJoinPledge",
	["28"] = "ReqWithdrawalPledge",
	["29"] = "ReqOustPledgeMember",
	["2B"] = "ReqAuthLogin",
	["2C"] = "ReqGetItemFromPet",
	["2E"] = "ReqAllyInfo",
	["2F"] = "ReqCrystallizeItem",
	["30"] = "ReqPrivateStoreManageSell",
	["31"] = "SetPrivateStoreListSell",
	["32"] = "AttackRequest",
	["34"] = "RequestSocialAction",
	["35"] = "ChangeMoveType2",
	["36"] = "ChangeWaitType2",
	["37"] = "RequestSellItem",
	["39"] = "RequestMagicSkillUse",
	["3A"] = "Appearing",
	["3B"] = "SendWareHouseDepositList",
	["3C"] = "SendWareHouseWithDrawList",
	["3D"] = "RequestShortCutReg",
	["3F"] = "RequestShortCutDel",
	["40"] = "RequestBuyItem",
	["42"] = "RequestJoinParty",
	["43"] = "RequestAnswerJoinParty",
	["44"] = "RequestWithDrawalParty",
	["45"] = "RequestOustPartyMember",
	["47"] = "CannotMoveAnymore",
	["48"] = "RequestTargetCancel",
	["49"] = "Say2",
	["4D"] = "RequestPledgeMemberList",
	["4F"] = "DummyPacket",
	["50"] = "RequestSkillList",
	["52"] = "MoveWithDelta",
	["53"] = "RequestGetOnVehicle",
	["54"] = "RequestGetOffVehicle",
	["55"] = "AnswerTradeRequest",
	["56"] = "RequestActionUse",
	["57"] = "RequestRestart",
	["58"] = "RequestSiegeInfo",
	["59"] = "ValidatePosition",
	["5B"] = "StartRotating",
	["5C"] = "FinishRotating",
	["5E"] = "RequestShowBoard",
	["5F"] = "RequestEnchantItem",
	["60"] = "RequestDestroyItem",
	["62"] = "RequestQuestList",
	["63"] = "RequestQuestAbort",
	["65"] = "RequestPledgeInfo",
	["66"] = "RequestPledgeExtendedInfo",
	["67"] = "RequestPledgeCrest",
	["6B"] = "RequestSendFriendMsg",
	["6C"] = "RequestShowMiniMap",
	["6E"] = "RequestRecordInfo",
	["6F"] = "RequestHennaEquip",
	["70"] = "RequestHennaRemoveList",
	["71"] = "RequestHennaItemRemoveInfo",
	["72"] = "RequestHennaRemove",
	["73"] = "RequestAcquireSkillInfo",
	["74"] = "SendBypassBuildCmd",
	["75"] = "ReqMoveToLocationInVehicle",
	["76"] = "CannotMoveAnymoreInVehicle",
	["77"] = "RequestFriendInvite",
	["78"] = "RequestAnswerFriendInvite",
	["79"] = "RequestFriendList",
	["7A"] = "RequestFriendDel",
	["7B"] = "CharacterRestore",
	["7C"] = "RequestAcquireSkill",
	["7D"] = "RequestRestartPoint",
	["7E"] = "RequestGMCommand",
	["7F"] = "RequestPartyMatchConfig",
	["80"] = "RequestPartyMatchList",
	["81"] = "RequestPartyMatchDetail",
	["83"] = "RequestPrivateStoreBuy",
	["85"] = "RequestTutorialLinkHtml",
	["86"] = "RequestTutorialPassCmdToServer",
	["87"] = "RequestTutorialQuestionMark",
	["88"] = "RequestTutorialClientEvent",
	["89"] = "RequestPetition",
	["8A"] = "RequestPetitionCancel",
	["8B"] = "RequestGMList",
	["8C"] = "RequestJoinAlly",
	["8D"] = "RequestAnswerJoinAlly",
	["8E"] = "AllyLeave",
	["8F"] = "AllyDismiss",
	["90"] = "RequestDismissAlly",
	["91"] = "RequestSetAllyCrest",
	["92"] = "RequestAllyCrest",
	["93"] = "RequestChangePetName",
	["94"] = "RequestPetUseItem",
	["95"] = "RequestGiveItemToPet",
	["96"] = "ReqPrivateStoreQuitSell",
	["97"] = "SetPrivateStoreMsgSell",
	["98"] = "RequestPetGetItem",
	["99"] = "ReqPrivateStoreManageBuy",
	["9A"] = "SetPrivateStoreListBuy",
	["9C"] = "ReqPrivateStoreQuitBuy",
	["9D"] = "SetPrivateStoreMsgBuy",
	["9F"] = "RequestPrivateStoreSell",
	["A6"] = "RequestSkillCoolTime",
	["A7"] = "ReqPackageSendableItemList",
	["A8"] = "RequestPackageSend",
	["A9"] = "RequestBlock",
	["AA"] = "RequestSiegeInfo",
	["AB"] = "RequestSiegeAttackerList",
	["AC"] = "RequestSiegeDefenderList",
	["AD"] = "RequestJoinSiege",
	["AE"] = "ReqConfirmSiegeWaitingList",
	["B0"] = "MultiSellChoose",
	["B1"] = "NetPing",
	["B3"] = "RequestUserCommand",
	["B4"] = "SnoopQuit",
	["B5"] = "RequestRecipeBookOpen",
	["B6"] = "RequestRecipeBookDestroy",
	["B7"] = "RequestRecipeItemMakeInfo",
	["B8"] = "RequestRecipeItemMakeSelf",
	["BA"] = "RequestRecipeShopMessageSet",
	["BB"] = "RequestRecipeShopListSet",
	["BC"] = "RequestRecipeShopManageQuit",
	["BE"] = "RequestRecipeShopMakeInfo",
	["BF"] = "RequestRecipeShopMakeItem",
	["C0"] = "RequestRecipeShopManagePrev",
	["C1"] = "ObserverReturn",
	["C2"] = "RequestEvaluate",
	["C3"] = "RequestHennaList",
	["C4"] = "RequestHennaItemInfo",
	["C5"] = "RequestBuySeed",
	["C6"] = "DlgAnswer",
	["C7"] = "RequestPreviewItem",
	["C8"] = "RequestSSQStatus",
	["CB"] = "GameGuardReply",
	["CC"] = "RequestPledgePower",
	["CD"] = "RequestMakeMacro",
	["CE"] = "RequestDeleteMacro",
	["CF"] = "RequestBuyProcure",
	["D001"] = "RequestManorList",
	["D002"] = "RequestProcureCropList",
	["D003"] = "RequestSetSeed",
	["D004"] = "RequestSetCrop",
	["D005"] = "RequestWriteHeroWords",
	["D006"] = "RequestExAskJoinMPCC",
	["D007"] = "RequestExAcceptJoinMPCC",
	["D008"] = "RequestExOustFromMPCC",
	["D009"] = "RequestOustFromPartyRoom",
	["D00A"] = "RequestDismissPartyRoom",
	["D00B"] = "RequestWithdrawPartyRoom",
	["D00C"] = "RequestChangePartyLeader",
	["D00D"] = "RequestAutoSoulShot",
	["D00E"] = "RequestExEnchantSkillInfo",
	["D00F"] = "RequestExEnchantSkill",
	["D010"] = "RequestExPledgeCrestLarge",
	["D011"] = "ReqExSetPledgeCrestLarge",
	["D012"] = "ReqPledgeSetAcademyMaster",
	["D013"] = "ReqPledgePowerGradeList",
	["D014"] = "ReqPledgeMemberPowerInfo",
	["D015"] = "ReqPledgeSetMemberPowerGrade",
	["D016"] = "RequestPledgeMemberInfo",
	["D017"] = "RequestPledgeWarList",
	["D018"] = "RequestExFishRanking",
	["D019"] = "RequestPCCafeCouponUse",
	["D01B"] = "RequestDuelStart",
	["D01C"] = "RequestDuelAnswerStart",
	["D01E"] = "RequestExRqItemLink",
	["D020"] = "MoveToLocationInAirShip",
	["D021"] = "RequestKeyMapping",
	["D022"] = "RequestSaveKeyMapping",
	["D023"] = "ReqExRemoveItemAttribute",
	["D024"] = "RequestSaveInventoryOrder",
	["D025"] = "ReqExitPartyMatchingWaitingRoom",
	["D026"] = "RequestConfirmTargetItem",
	["D027"] = "RequestConfirmRefinerItem",
	["D028"] = "RequestConfirmGemStone",
	["D029"] = "RequestOlympiadObserverEnd",
	["D02A"] = "RequestCursedWeaponList",
	["D02B"] = "RequestCursedWeaponLocation",
	["D02C"] = "ReqPledgeReorganizeMember",
	["D02D"] = "ReqExMPCCShowPartyMembersInfo",
	["D02E"] = "RequestOlympiadMatchList",
	["D02F"] = "RequestAskJoinPartyRoom",
	["D030"] = "AnswerJoinPartyRoom",
	["D031"] = "ReqListPartyMatchingWaitingRoom",
	["D032"] = "ReqExEnchantSkillSafe",
	["D033"] = "ReqExEnchantSkillUntrain",
	["D034"] = "ReqExEnchantSkillRouteChange",
	["D035"] = "ReqExEnchantItemAttribute",
	["D036"] = "ExGetOnAirShip",
	["D038"] = "MoveToLocationAirShip",
	["D039"] = "RequestBidItemAuction",
	["D03A"] = "RequestInfoItemAuction",
	["D03B"] = "RequestExChangeName",
	["D03C"] = "RequestAllCastleInfo",
	["D03D"] = "RequestAllFortressInfo",
	["D03E"] = "RequestAllAgitInfo",
	["D03F"] = "ReqFortressSiegeInfo",
	["D040"] = "RequestGetBossRecord",
	["D041"] = "RequestRefine",
	["D042"] = "ReqConfirmCancelItem",
	["D043"] = "RequestRefineCancel",
	["D044"] = "ReqExMagicSkillUseGround",
	["D045"] = "RequestDuelSurrender",
	["D046"] = "ReqExEnchantSkillInfoDetail",
	["D047"] = "ReqExMagicSkillUseGround",
	["D048"] = "RequestFortressMapInfo",
	["D049"] = "RequestPVPMatchRecord",
	["D04A"] = "SetPrivateStoreWholeMsg",
	["D04B"] = "RequestDispel",
	["D04C"] = "ReqExTryToPutEnchantTargetItem",
	["D04D"] = "ReqExTryToPutEnchantSupportItem",
	["D04E"] = "ReqExCancelEnchantItem",
	["D04F"] = "ReqChangeNicknameColor",
	["D050"] = "ReqResetNickname",
	["D051"] = "RequestExCancelEnchantItem",
	["D052"] = "ReqWithDrawPremiumItem",
	["D053"] = "RequestResetNickname",
	["D057"] = "ReqJoinDominionWar",
	["D058"] = "ReqDominionInfo",
	["D05A"] = "ReqExCubeGameChangeTeam",
	["D05B"] = "EndScenePlayer",
	["D05C"] = "ReqExCubeGameReadyAnswer",
	["D063"] = "RequestSeedPhase",
	["D065"] = "RequestPostItemList",
	["D066"] = "RequestSendPost",
	["D067"] = "ReqReceivedPostList",
	["D068"] = "ReqDeleteReceivedPost",
	["D069"] = "RequestReceivedPost",
	["D06A"] = "RequestPostAttachment",
	["D06B"] = "ReqRejectPostAttachment",
	["D06C"] = "RequestSentPostList",
	["D06D"] = "RequestDeleteSentPost",
	["D06E"] = "RequestSentPost",
	["D06F"] = "RequestCancelPost",
	["D075"] = "RequestRefundItem",
	["D076"] = "RequestBuySellUIClose",
	["D078"] = "ReqPartyLootModification",
	["D079"] = "AnswerPartyLootModification",
	["D07A"] = "AnswerCoupleAction",
	["D07B"] = "BrEventRankerList",
	["D07C"] = "AskMembership",
	["D07D"] = "ReqAddExpandQuestAlarm",
	["D07E"] = "RequestVoteNew",
	["D07F"] = "RequestBRGamePoint",
	["D080"] = "RequestBRProductList",
	["D081"] = "RequestBRProductInfo",
	["D082"] = "RequestBRBuyProduct",
	["D083"] = "RequestBRRecentProductList",
	["D084"] = "BrMinigameLoadScores",
	["D085"] = "BrMinigameInsertScore",
	["D086"] = "BrLectureMark",
	["D05100"] = "RequestBookMarkSlotInfo",
	["D05101"] = "RequestSaveBookMarkSlot",
	["D05102"] = "RequestModifyBookMarkSlot",
	["D05103"] = "RequestDeleteBookMarkSlot",
	["D05104"] = "RequestTeleportBookMark",
	["D05105"] = "RequestChangeBookMarkSlot",
	["D05A00"] = "ReqExCubeGameChangeTeam",
};

local spg = {
	["00"] = "Die",
	["01"] = "Revive",
	["05"] = "SpawnItem",
	["06"] = "SellList",
	["07"] = "BuyList",
	["08"] = "DeleteObject",
	["09"] = "CharSelectInfo",
	["0A"] = "LoginFail",
	["0B"] = "CharSelected",
	["0C"] = "NpcInfo",
	["0D"] = "NewCharacterSuccess",
	["0F"] = "CharCreateOk",
	["10"] = "CharCreateFail",
	["11"] = "ItemList",
	["12"] = "SunRise",
	["13"] = "SunSet",
	["14"] = "TradeStart",
	["16"] = "DropItem",
	["17"] = "GetItem",
	["18"] = "StatusUpdate",
	["19"] = "NpcHtmlMessage",
	["1A"] = "TradeOwnAdd",
	["1B"] = "TradeOtherAdd",
	["1C"] = "TradeDone",
	["1D"] = "CharDeleteSuccess",
	["1E"] = "CharDeleteFail",
	["1F"] = "ActionFailed",
	["20"] = "ServerClose",
	["21"] = "InventoryUpdate",
	["22"] = "TeleportToLocation",
	["23"] = "TargetSelected",
	["24"] = "TargetUnselected",
	["25"] = "AutoAttackStart",
	["26"] = "AutoAttackStop",
	["27"] = "SocialAction",
	["28"] = "ChangeMoveType",
	["29"] = "ChangeWaitType",
	["2A"] = "ManagePledgePower",
	["2C"] = "AskJoinPledge",
	["2D"] = "JoinPledge",
	["2E"] = "KeyInit",
	["2F"] = "MoveToLocation",
	["30"] = "NpcSay",
	["31"] = "CharInfo",
	["32"] = "UserInfo",
	["33"] = "Attack",
	["39"] = "AskJoinParty",
	["3A"] = "JoinParty",
	["41"] = "WareHouseDepositList",
	["42"] = "WareHouseWithdrawList",
	["44"] = "ShortCutRegister",
	["45"] = "ShortCutInit",
	["47"] = "StopMove",
	["48"] = "MagicSkillUse",
	["49"] = "MagicSkillCanceled",
	["4A"] = "CreatureSay",
	["4B"] = "EquipUpdate",
	["4C"] = "DoorInfo",
	["4D"] = "DoorStatusUpdate",
	["4E"] = "PartySmallWindowAll",
	["4F"] = "PartySmallWindowAdd",
	["50"] = "PartySmallWindowDeleteAll",
	["51"] = "PartySmallWindowDelete",
	["52"] = "PartySmallWindowUpdate",
	["54"] = "MagicSkillLaunched",
	["5A"] = "PledgeShowMemberListAll",
	["5B"] = "PledgeShowMemberListUpdate",
	["5C"] = "PledgeShowMemberListAdd",
	["5D"] = "PledgeShowMemberListDelete",
	["5F"] = "SkillList",
	["60"] = "VehicleInfo",
	["61"] = "StopRotation",
	["62"] = "SystemMessage",
	["63"] = "StartPledgeWar",
	["65"] = "StopPledgeWar",
	["67"] = "SurrenderPledgeWar",
	["6A"] = "PledgeCrest",
	["6B"] = "SetupGauge",
	["6C"] = "VehicleDeparture",
	["6D"] = "VehicleCheckLocation",
	["6E"] = "GetOnVehicle",
	["6F"] = "GetOffVehicle",
	["70"] = "SendTradeRequest",
	["71"] = "RestartResponse",
	["72"] = "MoveToPawn",
	["73"] = "SSQInfo",
	["74"] = "GameGuardQuery",
	["75"] = "FriendList",
	["76"] = "FriendPacket",
	["77"] = "FriendStatusPacket",
	["78"] = "L2FriendSay",
	["79"] = "ValidateLocation",
	["7A"] = "StartRotation",
	["7B"] = "ShowBoard",
	["7C"] = "ChooseInventoryItem",
	["7E"] = "MoveToLocationInVehicle",
	["7F"] = "StopMoveInVehicle",
	["80"] = "ValidateLocationInVehicle",
	["82"] = "TradeOtherDone",
	["83"] = "FriendAddRequest",
	["84"] = "LeaveWorld",
	["85"] = "MagicEffectIcons",
	["86"] = "QuestList",
	["87"] = "EnchantResult",
	["88"] = "PledgeShowMemberListDeleteAll",
	["89"] = "PledgeInfo",
	["8C"] = "Ride",
	["8E"] = "PledgeShowInfoUpdate",
	["90"] = "AcquireSkillList",
	["91"] = "AcquireSkillInfo",
	["92"] = "ServerObjectInfo",
	["93"] = "GMHide",
	["94"] = "AcquireSkillDone",
	["95"] = "GMViewCharacterInfo",
	["96"] = "GMViewPledgeInfo",
	["97"] = "GMViewSkillInfo",
	["99"] = "GMViewQuestInfo",
	["9A"] = "GMViewItemList",
	["9B"] = "GMViewWarehouseWithdrawList",
	["9C"] = "ListPartyWating",
	["9D"] = "PartyMatchDetail",
	["9E"] = "PlaySound",
	["9F"] = "StaticObject",
	["A0"] = "PrivateStoreManageListSell",
	["A1"] = "PrivateStoreListSell",
	["A2"] = "PrivateStoreMsgSell",
	["A3"] = "ShowMiniMap",
	["A6"] = "TutorialShowHtml",
	["A7"] = "TutorialShowQuestionMark",
	["A8"] = "TutorialEnableClientEvent",
	["A9"] = "TutorialClose",
	["AF"] = "AllyCrest",
	["B1"] = "PetStatusShow",
	["B2"] = "PetInfo",
	["B3"] = "PetItemList",
	["B4"] = "PetInventoryUpdate",
	["B6"] = "PetStatusUpdate",
	["B7"] = "PetDelete",
	["B9"] = "MyTargetSelected",
	["BA"] = "PartyMemberPosition",
	["BB"] = "AskJoinAlly",
	["BD"] = "PrivateStoreManageListBuy",
	["BE"] = "PrivateStoreListBuy",
	["BF"] = "PrivateStoreMsgBuy",
	["C0"] = "VehicleStarted",
	["C7"] = "SkillCoolTime",
	["C8"] = "PackageToList",
	["C9"] = "SiegeInfo",
	["CA"] = "SiegeAttackerList",
	["CB"] = "SiegeDefenderList",
	["CC"] = "NicknameChanged",
	["CD"] = "PledgeStatusChanged",
	["CE"] = "RelationChanged",
	["CF"] = "OnEventTrigger",
	["D0"] = "MultiSellList",
	["D1"] = "SetSummonRemainTime",
	["D2"] = "PackageSendableList",
	["D3"] = "Earthquake",
	["D4"] = "FlyToLocation",
	["D6"] = "SpecialCamera",
	["D7"] = "NormalCamera",
	["D9"] = "NetPing",
	["DA"] = "Dice",
	["DB"] = "Snoop",
	["DC"] = "RecipeBookItemList",
	["DD"] = "RecipeItemMakeInfo",
	["DE"] = "RecipeShopManageList",
	["DF"] = "RecipeShopSellList",
	["E0"] = "RecipeShopItemInfo",
	["E1"] = "RecipeShopMsg",
	["E2"] = "ShowCalculator",
	["E3"] = "MonRaceInfo",
	["E4"] = "HennaItemDrawInfo",
	["E5"] = "HennaInfo",
	["E6"] = "HennaRemoveList",
	["E7"] = "HennaItemRemoveInfo",
	["E8"] = "SendMacroList",
	["E9"] = "BuyListSeed",
	["EA"] = "ShowTownMap",
	["EB"] = "ObservationMode",
	["EC"] = "ObservationReturn",
	["ED"] = "ChairSit",
	["EE"] = "HennaEquipList",
	["EF"] = "SellListProcure",
	["F0"] = "GMHennaInfo",
	["F1"] = "RadarControl",
	["F2"] = "ClientSetTime",
	["F3"] = "ConfirmDlg",
	["F4"] = "PartySpelled",
	["F5"] = "ShopPreviewList",
	["F6"] = "ShopPreviewInfo",
	["F7"] = "CameraMode",
	["F8"] = "ShowXMasSeal",
	["F9"] = "EtcStatusUpdate",
	["FA"] = "ShortBuffStatusUpdate",
	["FB"] = "SSQStatus",
	["FD"] = "AgitDecoInfo",
	["FE01"] = "ExRegMax",
	["FE08"] = "ExPartyRoomMember",
	["FE09"] = "ExClosePartyRoom",
	["FE0A"] = "ExManagePartyRoomMember",
	["FE0C"] = "ExAutoSoulShot",
	["FE0F"] = "ExEventMatchMessage",
	["FE12"] = "ExOpenMPCC",
	["FE13"] = "ExCloseMPCC",
	["FE14"] = "ExShowCastleInfo",
	["FE15"] = "ExShowFortressInfo",
	["FE16"] = "ExShowAgitInfo",
	["FE17"] = "ExShowFortressSiegeInfo",
	["FE18"] = "ExPartyPetWindowAdd",
	["FE19"] = "ExPartyPetWindowUpdate",
	["FE1A"] = "ExAskJoinMPCC",
	["FE1B"] = "ExPledgeCrestLarge",
	["FE1E"] = "ExFishingStart",
	["FE1F"] = "ExFishingEnd",
	["FE20"] = "ExShowQuestInfo",
	["FE21"] = "ExShowQuestMark",
	["FE22"] = "ExSendManorList",
	["FE23"] = "ExShowSeedInfo",
	["FE24"] = "ExShowCropInfo",
	["FE25"] = "ExShowManorDefaultInfo",
	["FE26"] = "ExShowSeedSetting",
	["FE27"] = "ExFishingStartCombat",
	["FE28"] = "ExFishingHPRegen",
	["FE29"] = "ExEnchantSkillList",
	["FE2A"] = "ExEnchantSkillInfo",
	["FE2B"] = "ExShowCropSetting",
	["FE2C"] = "ExShowSellCropList",
	["FE2D"] = "ExOlympiadMatchEnd",
	["FE2E"] = "ExMailArrived",
	["FE2F"] = "ExStorageMaxCount",
	["FE31"] = "ExMultiPartyCommandChannelInfo",
	["FE32"] = "ExPCCafePointInfo",
	["FE33"] = "ExSetCompassZoneCode",
	["FE34"] = "ExGetBossRecord",
	["FE35"] = "ExAskJoinPartyRoom",
	["FE36"] = "ExListPartyMatchingWaitingRoom",
	["FE38"] = "ExShowAdventurerGuideBook",
	["FE39"] = "ExShowScreenMessage",
	["FE3A"] = "PledgeSkillList",
	["FE3B"] = "PledgeSkillListAdd",
	["FE3C"] = "PledgePowerGradeList",
	["FE3D"] = "PledgeReceivePowerInfo",
	["FE3E"] = "PledgeReceiveMemberInfo",
	["FE3F"] = "PledgeReceiveWarList",
	["FE40"] = "PledgeReceiveSubPledgeCreated",
	["FE41"] = "ExRedSky",
	["FE44"] = "ShowPCCafeCouponShowUI",
	["FE45"] = "ExSearchOrc",
	["FE46"] = "ExCursedWeaponList",
	["FE47"] = "ExCursedWeaponLocation",
	["FE48"] = "ExRestartClient",
	["FE49"] = "ExRequestHackShield",
	["FE4A"] = "ExUseSharedGroupItem",
	["FE4B"] = "ExMPCCShowPartyMemberInfo",
	["FE4C"] = "ExDuelAskStart",
	["FE4D"] = "ExDuelReady",
	["FE4E"] = "ExDuelStart",
	["FE4F"] = "ExDuelEnd",
	["FE50"] = "ExDuelUpdateUserInfo",
	["FE51"] = "ExShowVariationMakeWindow",
	["FE52"] = "ExShowVariationCancelWindow",
	["FE53"] = "ExPutItemResultForVariationMake",
	["FE54"] = "ExPutIntensiveResultForVariationMake",
	["FE55"] = "ExPutCommissionResultForVariationMake",
	["FE56"] = "ExVariationResult",
	["FE57"] = "ExPutItemResultForVariationCancel",
	["FE58"] = "ExVariationCancelResult",
	["FE5B"] = "ExMPCCPartyInfoUpdate",
	["FE5C"] = "ExPlayScene",
	["FE5D"] = "ExSpawnEmitter",
	["FE5E"] = "ExEnchantSkillInfoDetail",
	["FE5F"] = "ExBasicActionList",
	["FE60"] = "ExAirShipInfo",
	["FE61"] = "ExAttributeEnchantResult",
	["FE62"] = "ExChooseInventoryAttributeItem",
	["FE63"] = "ExGetOnAirShip",
	["FE64"] = "ExGetOffAirShip",
	["FE65"] = "ExMoveToLocationAirShip",
	["FE66"] = "ExStopMoveAirShip",
	["FE67"] = "ExShowTrace",
	["FE68"] = "ExItemAuctionInfoPacket",
	["FE69"] = "ExNeedToChangeName",
	["FE6A"] = "ExPartyPetWindowDelete",
	["FE6C"] = "ExRpItemLink",
	["FE6D"] = "ExMoveToLocationInAirShip",
	["FE6E"] = "ExStopMoveInAirShip",
	["FE6F"] = "ExValidateLocationInAirShip",
	["FE70"] = "ExUISetting",
	["FE74"] = "ExShowBaseAttributeCancelWindow",
	["FE75"] = "ExBaseAttributeCancelResult",
	["FE76"] = "ExSubPledgeSkillAdd",
	["FE78"] = "ExShowProcureCropDetail",
	["FE79"] = "ExHeroList",
	["FE7A"] = "ExOlympiadUserInfo",
	["FE7B"] = "ExOlympiadSpelledInfo",
	["FE7C"] = "ExOlympiadMode",
	["FE7D"] = "ExShowFortressMapInfo",
	["FE80"] = "ExPrivateStoreSetWholeMsg",
	["FE81"] = "ExPutEnchantTargetItemResult",
	["FE82"] = "ExPutEnchantSupportItemResult",
	["FE83"] = "ExRequestChangeNicknameColor",
	["FE84"] = "ExGetBookMarkInfoPacket",
	["FE85"] = "ExNotifyPremiumItem",
	["FE86"] = "ExGetPremiumItemList",
	["FE8D"] = "NpcQuestHtmlMessage",
	["FE8E"] = "ExSendUIEvent",
	["FE8F"] = "ExBirthdayPopup",
	["FE90"] = "ExShowDominionRegistry",
	["FE92"] = "ExReplyDominionInfo",
	["FE93"] = "ExShowOwnthingPos",
	["FE99"] = "ExStartScenePlayer",
	["FE9A"] = "ExAirShipTeleportList",
	["FEA0"] = "ExVitalityPointInfo",
	["FEA1"] = "ExShowSeedMapInfo",
	["FEA3"] = "ExDominionWarStart",
	["FEA4"] = "ExDominionWarEnd",
	["FEA7"] = "ExEnchantSkillResult",
	["FEA9"] = "ExNoticePostArrived",
	["FEAA"] = "ExShowReceivedPostList",
	["FEAB"] = "ExReplyReceivedPost",
	["FEAC"] = "ExShowSentPostList",
	["FEAD"] = "ExReplySentPost",
	["FEB2"] = "ExReplyPostItemList",
	["FEB3"] = "ExChangePostState",
	["FEB4"] = "ExNoticePostSent",
	["FEBB"] = "ExAskCoupleAction",
	["FEBC"] = "ExBrLoadEventTopRankers",
	["FEBD"] = "ExChangeNpcState",
	["FEBE"] = "ExAskModifyPartyLooting",
	["FEBF"] = "ExSetPartyLooting",
	["FEC0"] = "ExRotation",
	["FEC5"] = "ExQuestItemList",
	["FEC8"] = "ExVoteSystemInfo",
	["FECD"] = "ExBrPremiumState",
	["FECE"] = "ExBrBroadcastEventState",
	["FECF"] = "ExBrExtraUserInfo",
	["FED0"] = "ExBrBuffEventState",
	["FE970000"] = "ExCubeGameTeamList",
	["FE970001"] = "ExCubeGameAddPlayer",
	["FE970002"] = "ExCubeGameRemovePlayer",
	["FE970003"] = "ExCubeGameChangeTimeToStart",
	["FE970004"] = "ExCubeGameRequestReady",
	["FE970005"] = "ExCubeGameChangeTeam",
	["FE9700FF"] = "ExCubeGameCloseUI",
	["FE980000"] = "ExCubeGameExtendedChangePoints",
	["FE980001"] = "ExCubeGameEnd",
	["FE980002"] = "ExCubeGameChangePoints",
	["FEB70000"] = "ExBuyList",
	["FEB70001"] = "ExBuySellListPacket"
};

-- character table string
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

-- encoding
function enc(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function dec(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(7-i) or 0) end
        return string.char(c)
    end))
end
for k=0,255 do PacketUnBlock(k, 0xFF, 1);UnblockOutgoingPacket(k);Event_PacketUnBlock(k, 0xFF, 1);end;


function PacketLogger(sender, p, id, name)
	local i, output, size = 0, "", p:Size();
	
	if (size > 0) then
		local fh = io.open(logFile, "a");
		repeat
			p:SetOffset(i);
			output = output .. string.format("%02X", p:ReadUInt(1));    
			i = i + 1;
		until i >= size;

		fh:write(
			string.format("[%s] %s (%s bytes) [%s,%s]:\n%s\n\n", 
				os.date("%d %b %H:%M:%S"),
				sender, 
				tostring(size), 
				id,
				(name == nil) and "Unknown" or name, 
				output:gsub("(..)", "%1 ") 
			)
		);

		fh:close();
	end;
end;

local sellPattern = {
	
	
	itemsCountStart = 16;
	itemsCountLength = 4;
	
	itemIdStart = 24;
	itemIdLength = 2;
	
	itemCount = 32;
	itemCountLength = 8;
	
	itemPrice = 88;
	itemPriceLength = 8;
	
	itemLength = 84;
    
    itemAttackAttr = 66;
    itemAttackAttrLength = 2;
    
    itemAttackAttrPower = 68;
    itemAttackAttrPowerLength = 2;
    
    itemDefAttrFire = 70;
    itemDefAttrWater = 72;
    itemDefAttrWind = 74;
    itemDefAttrEarth = 76;
    itemDefAttrHoly = 78;
    itemDefAttrUnholy = 80;

    
    
    
    itemEnchant = 50;
    itemEnchantLength = 2;
    
    itemDefAttrLength = 2;
    
}

local buyPattern = {
	itemsCountStart = 12;
	itemsCountLength = 4;
	
	itemIdStart = 20;
	itemIdLength = 2;
	
	itemCount = 104;
	itemCountLength = 8;
	
	itemPrice = 88;
	itemPriceLength = 8;
	
	itemLength = 96;
}

local pSellPattern = {
	isPackage = 4;
	isPackageLength = 1;
}

city = "";

function parsePackets(p, name, location, pattern, type) --1 продажа, 3 покупка, 8 балкпродажа
	local i, output, size = 0, "", p:Size();
	if (size > 0) then
		local fh = io.open(stores .. name .. "."..type, "w+");
		
		p:SetOffset(pattern.itemsCountStart);
		count = p:ReadUInt(pattern.itemsCountLength);
		city = enc(GetCurrentZoneName());
        
		output = output..string.format("%s;%s;%s;%s;%s\n", location.X, location.Y,  location.Z, GetCurrentZoneID(), city);
		while i < count do
		
			p:SetOffset(pattern.itemIdStart + (i * pattern.itemLength));
			itemId = p:ReadUInt(pattern.itemIdLength);
			
			
			p:SetOffset(pattern.itemCount + (i * pattern.itemLength));
			itemCount = p:ReadUInt(pattern.itemCountLength);
			
			p:SetOffset(pattern.itemPrice + (i * pattern.itemLength));
			itemPrice = p:ReadUInt(pattern.itemPriceLength);
			if (type == 'buy') then
                output = output..string.format("%s,%s,%s\n", itemId, itemCount, itemPrice);
            else
                p:SetOffset(pattern.itemAttackAttr + (i * pattern.itemLength)); --attr
			    itemAttackAttr = p:ReadUInt(pattern.itemAttackAttrLength);
                
                p:SetOffset(pattern.itemAttackAttrPower + (i * pattern.itemLength)); --attr lvl
			    itemAttackAttrPower = p:ReadUInt(pattern.itemAttackAttrPowerLength);
            
                p:SetOffset(pattern.itemEnchant + (i * pattern.itemLength)); --enchant
			    itemEnchant = p:ReadUInt(pattern.itemEnchantLength);
            
                p:SetOffset(pattern.itemDefAttrFire + (i * pattern.itemLength)); --fire
			    itemDefAttrFire = p:ReadUInt(pattern.itemDefAttrLength);
                
                p:SetOffset(pattern.itemDefAttrWater + (i * pattern.itemLength)); --water
			    itemDefAttrWater = p:ReadUInt(pattern.itemDefAttrLength);
            
                 p:SetOffset(pattern.itemDefAttrWind + (i * pattern.itemLength)); --wind
			    itemDefAttrWind = p:ReadUInt(pattern.itemDefAttrLength);
            
                p:SetOffset(pattern.itemDefAttrEarth + (i * pattern.itemLength)); --earth
			    itemDefAttrEarth = p:ReadUInt(pattern.itemDefAttrLength);
            
               
            
                p:SetOffset(pattern.itemDefAttrHoly + (i * pattern.itemLength)); --holy
			    itemDefAttrHoly = p:ReadUInt(pattern.itemDefAttrLength);
            
                p:SetOffset(pattern.itemDefAttrUnholy + (i * pattern.itemLength)); --unholy
			    itemDefAttrUnholy = p:ReadUInt(pattern.itemDefAttrLength);
                    
                output = output..string.format("%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s\n", itemId, itemCount, itemPrice, itemAttackAttr, itemAttackAttrPower, itemEnchant, itemDefAttrFire, itemDefAttrWater, itemDefAttrWind, itemDefAttrEarth,  itemDefAttrHoly, itemDefAttrUnholy);
            end;
			
			
			i = i + 1;
		end;
		
		
		fh:write(
			output
		);

		fh:close();
	end;
end;



function OnIncomingPacket(p)
		local id = string.format("%02X",p:GetID());
		
		if (p:GetSubID() > 0) and (p:GetSubID() <= 0xFF) then 
			id = id .. string.format("%02X",p:GetSubID());
		end;
		
		if id == "A1" then --PrivateStoreListSell  
			seller = GetTarget();
			shop = seller:GetShopStatus();
			sellerName = seller:GetName();
			location = seller:GetLocation();			
			local type = 'store';
			if (shop == 8) then
			type = 'bulk';
			end;
			
			parsePackets(p, sellerName, location, sellPattern, type);
		end;
		if id == "BE" then -- PrivateStoreListBuy 
			seller = GetTarget();
			shop = seller:GetShopStatus();
			sellerName = seller:GetName();
			location = seller:GetLocation();
			parsePackets(p, sellerName, location, buyPattern, 'buy', shop);
		end;
	end;

function OnCreate()
	
	
	this:RegisterCommand("goscan", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("st", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
	
	this:RegisterCommand("goscanhv", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
	this:RegisterCommand("goscandion", CommandChatType.CHAT_CMD, CommandAccessLevel.ACCESS_ME);
	
	
	
	
	function OnCommand_goscan(vCommandChatType, vNick, vCommandParam)
		ProcessCommand("/scriptstart roaming.lua");
	end;
	
	function OnCommand_goscanhv(vCommandChatType, vNick, vCommandParam)
		ProcessCommand("/scriptstart hv.lua");
	end;
	function OnCommand_goscandion(vCommandChatType, vNick, vCommandParam)
		ProcessCommand("/scriptstart dion.lua");
	end;
	
	function OnCommand_st(vCommandChatType, vNick, vCommandParam)
		ShowToClient("shop", "fsa");
		ProcessCommand("/scriptStopAll");
	end;
	

end;
