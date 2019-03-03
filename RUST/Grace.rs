use std::{io::prelude::*,fs::File};
macro_rules!f0{()=>{Ok(())}}
macro_rules!f1{()=>{File::create("Grace_kid.rs")?;}}
macro_rules!f2{()=>(
fn main()->std::io::Result<()>{
let mut b=f1!();
writeln!(b,"use std::{{io::prelude::*,fs::File}};\nmacro_rules!f0{{()=>{{Ok(())}}}}\nmacro_rules!f1{{()=>{{File::create({1}Grace_kid.rs{1})?;}}}}\nmacro_rules!f2{{()=>(\nfn main()->std::io::Result<()>{{\nlet mut b=f1!();\nwriteln!(b,{0:?},{0:?},\'{1}\')?;\nf0!()}})}}\nf2!();","use std::{{io::prelude::*,fs::File}};\nmacro_rules!f0{{()=>{{Ok(())}}}}\nmacro_rules!f1{{()=>{{File::create({1}Grace_kid.rs{1})?;}}}}\nmacro_rules!f2{{()=>(\nfn main()->std::io::Result<()>{{\nlet mut b=f1!();\nwriteln!(b,{0:?},{0:?},\'{1}\')?;\nf0!()}})}}\nf2!();",'"')?;
f0!()})}
f2!();
