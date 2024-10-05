use zed_extension_api as zed;


struct PrologExtension;

impl zed::Extension for PrologExtension {
    fn new() -> Self
    where
        Self: Sized {
            Self {}
    }
}

zed::register_extension!(PrologExtension);
