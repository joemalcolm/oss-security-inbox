X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3368" "Tuesday" "16" "August" "2016" "15:38:02" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<40abdc05-0c65-860b-f657-827ba790078d@redhat.com>" "94" "[oss-security] firewalld: Firewall configuration can be modified by any logged in user" nil nil nil "8" "2016081610:08:02" "[oss-security] firewalld: Firewall configuration can be modified by any logged in user" (number mark "U       huzaifas@red Aug 16   94/3368  " thread-indent "\"[oss-security] firewalld: Firewall configuration can be modified by any logged in user\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15802 invoked by uid 550); 16 Aug 2016 10:08:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15783 invoked from network); 16 Aug 2016 10:08:16 -0000
To: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <40abdc05-0c65-860b-f657-827ba790078d@redhat.com>
Date: Tue, 16 Aug 2016 15:38:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 16 Aug 2016 10:08:04 +0000 (UTC)
Subject: [oss-security] firewalld: Firewall configuration can be modified by any logged in
 user

Hi All,

FirewallD provides dbus api for modification of configuration after user
has been authenticated via polkit. This does not apply for 5 methods
which can be called by any logged user using dbus api or firewall-cmd
cli interface. Any predefined policy can be used, server or desktop.

list of concerned dbus methods in firewalld.py
addPassthrough
removePassthrough
addEntry
removeEntry
setEntries

Any locally logged in user, could use the above firewalld commands to
tamper or change the firewall settings.

This flaw was introduced via the following commit:
https://github.com/t-woerner/firewalld/commit/6b9867cd5c5e2c83adeec42666521a420e59ef11

It affects all firewalld versions since 0.3.12

We have assigned CVE-2016-5410 to this flaw and this issue was
previously disclosed via the linux-distros mailing list.


A proposed patch is enclosed with this email.

--- a/src/firewall/server/firewalld.py
+++ a/src/firewall/server/firewalld.py
@@ -61,8 +61,8 @@ class FirewallD(slip.dbus.service.Object):

     persistent = True
     """ Make FirewallD persistent. """
-    default_polkit_auth_required = config.dbus.PK_ACTION_INFO
-    """ Use config.dbus.PK_ACTION_INFO as a default """
+    default_polkit_auth_required = config.dbus.PK_ACTION_CONFIG
+    """ Use config.dbus.PK_ACTION_CONFIG as a default """

     @handle_exceptions
     def __init__(self, *args, **kwargs):
@@ -2128,6 +2128,7 @@ class FirewallD(slip.dbus.service.Object):

     # DIRECT PASSTHROUGH (tracked)

+    @slip.dbus.polkit.require_auth(config.dbus.PK_ACTION_DIRECT)
     @dbus_service_method(config.dbus.DBUS_INTERFACE_DIRECT,
in_signature='sas',
                          out_signature='')
     @dbus_handle_exceptions
@@ -2141,6 +2142,7 @@ class FirewallD(slip.dbus.service.Object):
         self.fw.direct.add_passthrough(ipv, args)
         self.PassthroughAdded(ipv, args)

+    @slip.dbus.polkit.require_auth(config.dbus.PK_ACTION_DIRECT)
     @dbus_service_method(config.dbus.DBUS_INTERFACE_DIRECT,
in_signature='sas',
                          out_signature='')
     @dbus_handle_exceptions
@@ -2256,6 +2258,7 @@ class FirewallD(slip.dbus.service.Object):

     # set entries # # # # # # # # # # # # # # # # # # # # # # # # # # #
# # #

+    @slip.dbus.polkit.require_auth(config.dbus.PK_ACTION_CONFIG)
     @dbus_service_method(config.dbus.DBUS_INTERFACE_IPSET,
in_signature='ss',
                          out_signature='')
     @dbus_handle_exceptions
@@ -2268,6 +2271,7 @@ class FirewallD(slip.dbus.service.Object):
         self.fw.ipset.add_entry(ipset, entry)
         self.EntryAdded(ipset, entry)

+    @slip.dbus.polkit.require_auth(config.dbus.PK_ACTION_CONFIG)
     @dbus_service_method(config.dbus.DBUS_INTERFACE_IPSET,
in_signature='ss',
                          out_signature='')
     @dbus_handle_exceptions
@@ -2301,7 +2305,7 @@ class FirewallD(slip.dbus.service.Object):
         log.debug1("ipset.getEntries('%s')" % ipset)
         return self.fw.ipset.get_entries(ipset)

-    @slip.dbus.polkit.require_auth(config.dbus.PK_ACTION_INFO)
+    @slip.dbus.polkit.require_auth(config.dbus.PK_ACTION_CONFIG)
     @dbus_service_method(config.dbus.DBUS_INTERFACE_IPSET,
in_signature='sas')
     @dbus_handle_exceptions
     def setEntries(self, ipset, entries, sender=None): # pylint:
disable=W0613



-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
