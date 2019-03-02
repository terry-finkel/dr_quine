/*
    R U SToned bro?
*/
fn quine() {
    println!("/*\n    R U SToned bro?\n*/\nfn quine() {{\n    println!({0:?}, {0:?});\n}}\n\nfn main() {{\n    /*\n        Rust the magic.\n    */\n    quine();\n}}", "/*\n    R U SToned bro?\n*/\nfn quine() {{\n    println!({0:?}, {0:?});\n}}\n\nfn main() {{\n    /*\n        Rust the magic.\n    */\n    quine();\n}}");
}

fn main() {
    /*
        Rust the magic.
    */
    quine();
}
