module GHCVM.Rename.RnSplice where

import HsSyn
import GHCVM.TypeCheck.TcRnMonad
import RdrName
import Name
import NameSet
import Kind


rnSpliceType :: HsSplice RdrName   -> PostTc Name Kind
             -> RnM (HsType Name, FreeVars)
rnSplicePat  :: HsSplice RdrName   -> RnM ( Either (Pat RdrName) (Pat Name)
                                          , FreeVars )
rnSpliceDecl :: SpliceDecl RdrName -> RnM (SpliceDecl Name, FreeVars)
