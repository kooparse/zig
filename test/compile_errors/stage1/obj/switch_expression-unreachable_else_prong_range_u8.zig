fn foo(x: u8) void {
    switch (x) {
        0 => {},
        1 => {},
        2 => {},
        3 => {},
        4...255 => {},
        else => {},
    }
}
export fn entry() usize { return @sizeOf(@TypeOf(foo)); }

// error
// backend=stage1
// target=native
//
// tmp.zig:8:9: error: unreachable else prong, all cases already handled
