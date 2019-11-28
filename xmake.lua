target("osdialog")
    set_kind("static")
    add_includedirs("./", {public=true})
--    add_includedirs("/usr/include/gtk-3.0/")
--    add_includedirs("/usr/include/glib-2.0/")
--    add_includedirs("/usr/include/pango-1.0/")
--    add_includedirs("/usr/include/cairo/")
--    add_includedirs("/usr/include/gdk-pixbuf-2.0/")
--    add_includedirs("/usr/include/atk-1.0/")
--    add_includedirs("/usr/lib64/glib-2.0/include/")
    add_files("./osdialog.c")
    if is_plat("linux") then
        add_files("./osdialog_gtk3.c")
        add_cxflags("$(shell pkg-config --cflags gtk+-3.0)")
    end
