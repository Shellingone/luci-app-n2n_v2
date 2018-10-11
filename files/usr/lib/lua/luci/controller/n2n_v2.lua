
module("luci.controller.n2n_v2", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/n2n_v2") then
		return
	end
	
	entry({"admin", "vpn"}, firstchild(), "N2N", 45).dependent = false
	
	local page

	entry({"admin", "vpn", "n2n_v2"}, cbi("n2n_v2"), _("N2N(V2)"), 80).dependent=false
end
