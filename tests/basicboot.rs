#![no_std]
#![no_main]
#![feature(custom_test_frameworks)]
#![test_runner(melaninos_kernel::testexec)]
#![reexport_test_harness_main = "testmain"]

use core::panic::PanicInfo;

#[no_mangle]
pub extern "C" fn _start() -> !
{
	testmain();
	loop {}
}


//fn testexec(tests: &[&dyn Fn()])
//{
//	unimplemented!();
//}

#[panic_handler]
fn panic(info: &PanicInfo) -> !
{
	melaninos_kernel::test_panic_handler(info)
}


use melaninos_kernel::println;
#[test_case]
fn test_println()
{
	println!("[TEST] PRINTLN OUTPUT");
}
