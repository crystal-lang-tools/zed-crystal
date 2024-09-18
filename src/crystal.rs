use zed_extension_api::{self as zed, Result};

struct CrystalExtension;

impl zed::Extension for CrystalExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        let path = worktree.which("crystalline").ok_or_else(|| {
            "Please install crystalline manually and make sure it is on $PATH.".to_string()
        })?;
        Ok(zed::Command {
            command: path,
            args: vec![],
            env: Default::default(),
        })
    }
}

zed::register_extension!(CrystalExtension);
