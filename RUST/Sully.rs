use std::{io::prelude::*,fs::File,process::Command};
fn main()->std::io::Result<()>{
let mut k=5;
if cfg!(rep){k-=1;}
let s=format!("Sully_{}.rs",k);
let mut f=File::create(s)?;
writeln!(f,"use std::{{io::prelude::*,fs::File,process::Command}};\nfn main()->std::io::Result<()>{{\nlet mut k={1};\nif cfg!(rep){{k-=1;}}\nlet s=format!({2}Sully_{{}}.rs{2},k);\nlet mut f=File::create(s)?;\nwriteln!(f,{0:?},{0:?},k,\'{2}\')?;\nlet b=format!({2}./Sully_{{}}.rs{2},k);\nlet mut c=Command::new({2}rustc{2}).arg({2}--cfg{2}).arg({2}rep{2}).arg(&b).spawn()?;\nc.wait()?;\nif k!=0{{Command::new(&b[..9]).spawn()?;}}\nOk(())\n}}","use std::{{io::prelude::*,fs::File,process::Command}};\nfn main()->std::io::Result<()>{{\nlet mut k={1};\nif cfg!(rep){{k-=1;}}\nlet s=format!({2}Sully_{{}}.rs{2},k);\nlet mut f=File::create(s)?;\nwriteln!(f,{0:?},{0:?},k,\'{2}\')?;\nlet b=format!({2}./Sully_{{}}.rs{2},k);\nlet mut c=Command::new({2}rustc{2}).arg({2}--cfg{2}).arg({2}rep{2}).arg(&b).spawn()?;\nc.wait()?;\nif k!=0{{Command::new(&b[..9]).spawn()?;}}\nOk(())\n}}",k,'"')?;
let b=format!("./Sully_{}.rs",k);
let mut c=Command::new("rustc").arg("--cfg").arg("rep").arg(&b).spawn()?;
c.wait()?;
if k!=0{Command::new(&b[..9]).spawn()?;}
Ok(())
}
