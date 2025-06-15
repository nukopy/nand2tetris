pub fn run() {
    println!("Hello, hack-assembler!");
}

pub fn add(a: i32, b: i32) -> i32 {
    a + b
}

#[test]
fn test_add() {
    // given
    let a = 2;
    let b = 3;
    // when
    let result = add(a, b);
    // then
    assert_eq!(result, 5);
}
