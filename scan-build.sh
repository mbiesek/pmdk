VERSION="7"
CHECKERS_ALPHA="\
    -enable-checker alpha.clone.CloneChecker \
    -enable-checker alpha.core.BoolAssignment\
    -enable-checker alpha.core.CallAndMessageUnInitRefArg \
    -enable-checker alpha.core.CastSize \
    -enable-checker alpha.core.CastToStruct \
    -enable-checker alpha.core.Conversion \
    -enable-checker alpha.core.DynamicTypeChecker \
    -enable-checker alpha.core.FixedAddr \
    -enable-checker alpha.core.IdenticalExpr \
    -enable-checker alpha.core.PointerArithm \
    -enable-checker alpha.core.PointerSub \
    -enable-checker alpha.core.SizeofPtr \
    -enable-checker alpha.core.StackAddressAsyncEscape \
    -enable-checker alpha.core.TestAfterDivZero \
    -enable-checker alpha.cplusplus.DeleteWithNonVirtualDtor \
    -enable-checker alpha.cplusplus.IteratorRange \
    -enable-checker alpha.cplusplus.MisusedMovedObject \
    -enable-checker alpha.deadcode.UnreachableCode \
    -enable-checker alpha.osx.cocoa.DirectIvarAssignment \
    -enable-checker alpha.osx.cocoa.DirectIvarAssignmentForAnnotatedFunctions \
    -enable-checker alpha.osx.cocoa.InstanceVariableInvalidation \
    -enable-checker alpha.osx.cocoa.MissingInvalidationMethod \
    -enable-checker alpha.osx.cocoa.localizability.PluralMisuseChecker \
    -enable-checker alpha.security.ArrayBound \
    -enable-checker alpha.security.ArrayBoundV2 \
    -enable-checker alpha.security.MallocOverflow \
    -enable-checker alpha.security.ReturnPtrRange \
    -enable-checker alpha.security.taint.TaintPropagation \
    -enable-checker alpha.unix.BlockInCriticalSection \
    -enable-checker alpha.unix.Chroot \
    -enable-checker alpha.unix.PthreadLock \
    -enable-checker alpha.unix.SimpleStream \
    -enable-checker alpha.unix.Stream \
    -enable-checker alpha.unix.cstring.BufferOverlap \
    -enable-checker alpha.unix.cstring.NotNullTerminated \
    -enable-checker alpha.unix.cstring.OutOfBounds \
"

CHECKERS_DEBUG="\
    -enable-checker debug.AnalysisOrder \
    -enable-checker debug.ConfigDumper \
    -enable-checker debug.DumpCFG \
    -enable-checker debug.DumpCallGraph \
    -enable-checker debug.DumpCalls \
    -enable-checker debug.DumpDominators \
    -enable-checker debug.DumpLiveVars \
    -enable-checker debug.DumpTraversal \
    -enable-checker debug.ExprInspection \
    -enable-checker debug.Stats \
    -enable-checker debug.TaintTest \
    -enable-checker debug.ViewCFG \
    -enable-checker debug.ViewCallGraph \
    -enable-checker debug.ViewExplodedGraph \
"

CHECKERS_LLVM="\
    -enable-checker llvm.Conventions \
"

CHECKERS_NULLABILITY="\
    -enable-checker nullability.NullableDereferenced \
    -enable-checker nullability.NullablePassedToNonnull \
    -enable-checker nullability.NullableReturnedFromNonnull \
"

CHECKERS_OSX="\
    -enable-checker osx.API \
    -enable-checker osx.NumberObjectConversion \
    -enable-checker osx.ObjCProperty \
    -enable-checker osx.SecKeychainAPI \
    -enable-checker osx.cocoa.AtSync \
    -enable-checker osx.cocoa.ClassRelease \
    -enable-checker osx.cocoa.Dealloc \
    -enable-checker osx.cocoa.IncompatibleMethodTypes \
    -enable-checker osx.cocoa.Loops \
    -enable-checker osx.cocoa.MissingSuperCall \
    -enable-checker osx.cocoa.NSAutoreleasePool \
    -enable-checker osx.cocoa.NSError \
    -enable-checker osx.cocoa.NilArg \
    -enable-checker osx.cocoa.NonNilReturnValue \
    -enable-checker osx.cocoa.ObjCGenerics \
    -enable-checker osx.cocoa.RetainCount \
    -enable-checker osx.cocoa.SelfInit \
    -enable-checker osx.cocoa.SuperDealloc \
    -enable-checker osx.cocoa.UnusedIvars \
    -enable-checker osx.cocoa.VariadicMethodTypes \
    -enable-checker osx.coreFoundation.CFError \
    -enable-checker osx.coreFoundation.CFNumber \
    -enable-checker osx.coreFoundation.CFRetainRelease \
    -enable-checker osx.coreFoundation.containers.OutOfBounds \
    -enable-checker osx.coreFoundation.containers.PointerSizedValues \
"

CHECKERS_OPTIN="\
    -enable-checker optin.cplusplus.VirtualCall \
    -enable-checker optin.mpi.MPI-Checker \
    -enable-checker optin.osx.cocoa.localizability.EmptyLocalizationContextChecker \
    -enable-checker optin.osx.cocoa.localizability.NonLocalizedStringChecker \
    -enable-checker optin.performance.Padding \
    -enable-checker optin.portability.UnixAPI \
"

CHECKERS_SECURITY="\
    -enable-checker security.FloatLoopCounter \
    -enable-checker security.insecureAPI.rand \
    -enable-checker security.insecureAPI.strcpy \
"

CHECKERS_VALIST="\
    -enable-checker valist.CopyToSelf \
    -enable-checker valist.Uninitialized \
    -enable-checker valist.Unterminated \
"

OUTPUT="/home/michalbieseklinux/ScanBuildResult/"

scan-build-$VERSION $CHECKERS_VALIST -o $OUTPUT make all



