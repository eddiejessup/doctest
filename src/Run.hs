module Run where

import           Prelude ()
import           Prelude.Compat

import           System.Process
import           System.IO
import           GHC.Paths (ghc)

-- To run:
-- > cabal build all
-- > cabal cabal exec doctest

-- Failure output (build with iWantStackOverFlow == True):
-- stack overflow: use +RTS -K<size> to increase it
-- Succeed output (build with iWantStackOverFlow == False):
-- <Nothing, ie empty output>

iWantStackOverFlow :: Bool
iWantStackOverFlow = False

unitId :: String
unitId = if iWantStackOverFlow then "doctest-0.20.0-inplace" else "doctest-0.20.0-inplace2"

args94 :: [String]
args94 = [
  "--interactive",
  -- "-outputdir",
  -- "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build",
  -- "-odir",
  -- "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build",
  -- "-hidir",
  -- "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build",
  -- "-stubdir",
  -- "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build",
  -- "-i",
  -- "-i/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build",
  -- "-isrc",
  -- "-ighci-wrapper/src",
  -- "-i/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build/autogen",
  -- "-i/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build/global-autogen",
  -- "-I/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build/autogen",
  -- "-I/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build/global-autogen",
  -- "-I/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build",
  -- "-optP-include",
  -- "-optP/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/build/autogen/cabal_macros.h",
  "-this-unit-id",
  unitId,
  -- "-hide-all-packages",
  -- "-Wmissing-home-modules",
  -- "-no-user-package-db",
  -- "-package-db",
  -- "/Users/elliotmarsden/.cabal/store/ghc-9.4.2/package.db",
  -- "-package-db",
  -- "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/packagedb/ghc-9.4.2",
  -- "-package-db",
  -- "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.4.2/doctest-0.20.0/package.conf.inplace",
  -- "-package-id",
  -- "base-4.17.0.0",
  -- "-package-id",
  -- "bs-cmpt-0.12.2-8fd4002e",
  -- "-package-id",
  -- "cd-pg-0.2.1-8aaba962",
  -- "-package-id",
  -- "deepseq-1.4.8.0",
  -- "-package-id",
  -- "directory-1.3.7.1",
  -- "-package-id",
  -- "exceptions-0.10.5",
  -- "-package-id",
  -- "filepath-1.4.2.2",
  -- "-package-id",
  -- "ghc-9.4.2",
  -- "-package-id",
  -- "ghc-pths-0.1.0.12-0baed1dd",
  -- "-package-id",
  -- "process-1.6.15.0",
  -- "-package-id",
  -- "syb-0.7.2.2-c8583bf9",
  -- "-package-id",
  -- "transformers-0.5.6.2",
  -- "-XHaskell2010",
  -- "Test.DocTest"
  "Extract"
  -- "GhcUtil",
  -- "Info",
  -- "Interpreter",
  -- "Location",
  -- "Options",
  -- "PackageDBs",
  -- "Parse",
  -- "Property",
  -- "Run",
  -- "Runner",
  -- "Runner.Example",
  -- "Util",
  -- "Language.Haskell.GhciWrapper",
  -- "Paths_doctest",
  -- "-Wall",
  -- "-hide-all-packages"
  ]

args92 :: [String]
args92 = [
  "--interactive",
  "-fbuilding-cabal-package",
  "-O0",
  "-outputdir",
  "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build",
  "-odir",
  "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build",
  "-hidir",
  "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build",
  "-stubdir",
  "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build",
  "-i",
  "-i/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build",
  "-isrc",
  "-ighci-wrapper/src",
  "-i/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build/autogen",
  "-i/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build/global-autogen",
  "-I/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build/autogen",
  "-I/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build/global-autogen",
  "-I/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build",
  "-optP-include",
  "-optP/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/build/autogen/cabal_macros.h",
  "-this-unit-id",
  "doctest-0.20.0-inplace",
  "-hide-all-packages",
  "-Wmissing-home-modules",
  "-no-user-package-db",
  "-package-db",
  "/Users/elliotmarsden/.cabal/store/ghc-9.2.4/package.db",
  "-package-db",
  "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/packagedb/ghc-9.2.4",
  "-package-db",
  "/Users/elliotmarsden/elmo/src/doctest/dist-newstyle/build/aarch64-osx/ghc-9.2.4/doctest-0.20.0/package.conf.inplace",
  "-package-id",
  "base-4.16.3.0",
  "-package-id",
  "bs-cmpt-0.12.2-0e908c20",
  "-package-id",
  "cd-pg-0.2.1-e85f959f",
  "-package-id",
  "deepseq-1.4.6.1",
  "-package-id",
  "directory-1.3.6.2",
  "-package-id",
  "exceptions-0.10.4",
  "-package-id",
  "filepath-1.4.2.2",
  "-package-id",
  "ghc-9.2.4",
  "-package-id",
  "ghc-pths-0.1.0.12-43363e88",
  "-package-id",
  "process-1.6.13.2",
  "-package-id",
  "syb-0.7.2.2-e7dd2b23",
  "-package-id",
  "transformers-0.5.6.2",
  "-XHaskell2010",
  "Test.DocTest",
  "Extract",
  "GhcUtil",
  "Info",
  "Interpreter",
  "Location",
  "Options",
  "PackageDBs",
  "Parse",
  "Property",
  "Run",
  "Runner",
  "Runner.Example",
  "Util",
  "Language.Haskell.GhciWrapper",
  "Paths_doctest",
  "-Wall",
  "-hide-all-packages"
  ]

foo :: IO ()
foo = do
  (Just _stdin_, Just _stdout_, Nothing, processHandle ) <-
    createProcess $ (proc ghc args94) {std_in = CreatePipe, std_out = CreatePipe, std_err = Inherit}
  hClose $ _stdin_
  _e <- waitForProcess processHandle
  hClose $ _stdout_
  pure ()
