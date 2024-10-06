use zed_extension_api as zed;

struct PrologExtension;

impl zed::Extension for PrologExtension {
    fn new() -> Self
    where
        Self: Sized,
    {
        Self {}
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        let swipl_path = worktree
            .which("swipl")
            .ok_or_else(|| "swipl not found in PATH".to_string())?;

        Ok(zed::Command {
            command: swipl_path,
            args: vec![
                "-g".to_string(),
                "use_module(library(lsp_server)).".to_string(),
                "-g".to_string(),
                "lsp_server:main".to_string(),
                "-t".to_string(),
                "halt".to_string(),
                "--".to_string(),
                "stdio".to_string(),
            ],
            env: Default::default(),
        })
    }
}

zed::register_extension!(PrologExtension);
