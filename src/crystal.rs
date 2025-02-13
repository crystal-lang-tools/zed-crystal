use zed_extension_api::{self as zed, Result};

struct CrystalExtension;

impl zed::Extension for CrystalExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        language_server_id: &zed::LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        match language_server_id.as_ref() {
            "crystalline" => {
                let path = worktree.which("crystalline").ok_or_else(|| {
                    "Please install crystalline manually and make sure it is on $PATH.".to_string()
                })?;
                Ok(zed::Command {
                    command: path,
                    args: vec![],
                    env: Default::default(),
                })
            }
            "ameba-ls" => {
                let path = worktree.which("ameba-ls").ok_or_else(|| {
                    "Please install ameba-ls manually and make sure it is on $PATH.".to_string()
                })?;
                Ok(zed::Command {
                    command: path,
                    args: vec![],
                    env: Default::default(),
                })
            }
            _ => Err("Unsupported language server".to_string()),
        }
    }
}

zed::register_extension!(CrystalExtension);
