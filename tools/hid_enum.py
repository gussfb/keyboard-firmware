import hid, sys
VID, PID = 0x258A, 0x0090
print("hidapi version:", hid.version_str() if hasattr(hid,'version_str') else '?')
devs = [d for d in hid.enumerate() if d['vendor_id']==VID and d['product_id']==PID]
print(f"found {len(devs)} HID interfaces/collections for {VID:04x}:{PID:04x}")
for d in devs:
    print("-"*70)
    for k in ('path','manufacturer_string','product_string','serial_number','release_number','interface_number','usage_page','usage','bus_type'):
        v = d.get(k)
        if k=='path' and isinstance(v,(bytes,bytearray)): v=v.decode(errors='replace')
        if k in ('usage_page','usage','release_number') and isinstance(v,int): v=f"0x{v:04X}"
        print(f"  {k:20s} {v}")
    # try report descriptor (hidapi >= 0.14)
    try:
        h = hid.device(); h.open_path(d['path'])
        try:
            rd = h.get_report_descriptor() if hasattr(h,'get_report_descriptor') else None
            if rd: print("  report_descriptor    ", bytes(rd).hex())
        finally:
            h.close()
    except Exception as e:
        print("  open/desc error:", e)
