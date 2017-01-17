X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3735" "Tuesday" "17" "January" "2017" "17:48:59" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1701171743330.22483@wniryva>" "78" "[oss-security] CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host filesystem" nil nil nil "1" "2017011712:18:59" "[oss-security] CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host filesystem" (number mark "U       ppandit@redh Jan 17   78/3735  " thread-indent "\"[oss-security] CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host filesystem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5280 invoked by uid 550); 17 Jan 2017 12:19:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5256 invoked from network); 17 Jan 2017 12:19:20 -0000
Date: Tue, 17 Jan 2017 17:48:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Jann Horn <jannh@google.com>, Greg Kurz <groug@kaod.org>
Message-ID: <alpine.LFD.2.20.1701171743330.22483@wniryva>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="0-1116334162-1484655547=:22483"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Tue, 17 Jan 2017 12:19:09 +0000 (UTC)
Subject: [oss-security] CVE-2016-9602 Qemu: 9p: virtfs allows guest to access host
 filesystem

--0-1116334162-1484655547=:22483
Content-Type: text/plain; format=flowed; charset=US-ASCII

   Hello,

Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9 
File System(9pfs) support, is vulnerable to an improper link following issue. 
It could occur while accessing symbolic link files on a shared host directory.

A privileged user inside guest could use this flaw to access host file system 
beyond the shared folder and potentially escalating their privileges on a 
host.

Reference:
----------
   -> http://wiki.qemu.org/Documentation/9psetup
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1413929


Please see a proposed patch to fix this issue attached herein.

This issue was discovered by Jann Horn of Google Project Zero.

'CVE-2016-9602' has been assigned to this issue by Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
--0-1116334162-1484655547=:22483
Content-Type: text/plain; charset=US-ASCII; name=qemu-9pfs-only-allow-directories-during-walk.patch
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.LFD.2.20.1701171748590.22483@wniryva>
Content-Description: 
Content-Disposition: attachment; filename=qemu-9pfs-only-allow-directories-during-walk.patch

OXBmczogb25seSBhbGxvdyBkaXJlY3RvcmllcyBkdXJpbmcgd2Fsaw0KDQpB
cyBzdGF0ZWQgaW4gdGhlIDlQIHNwZWMgYXQgaHR0cDovL21hbi5jYXQtdi5v
cmcvcGxhbl85LzUvd2FsaywgdGhlIGZpZA0KYXJndW1lbnQgdG8gdGhlIHdh
bGsgcmVxdWVzdCAibXVzdCByZXByZXNlbnQgYSBkaXJlY3RvcnkgdW5sZXNz
IHplcm8gcGF0aA0KbmFtZSBlbGVtZW50cyBhcmUgc3BlY2lmaWVkIiBhbmQg
dGhlIHNhbWUgInJlc3RyaWN0aW9uIiBhcHBsaWVzIHRvIGFsbA0Kc3BlY2lm
aWVkIHBhdGggbmFtZSBlbGVtZW50cy4NCg0KVGhpcyBmaXhlcyBhIHBvdGVu
dGlhbCBzeW1saW5rIGF0dGFjayBmcm9tIGEgbWFsaWNpb3VzIGd1ZXN0LCBy
ZXBvcnRlZCBieQ0KSmFubiBIb3JuIDxqYW5uaEBnb29nbGUuY29tPiBhbmQg
ZGVzY3JpYmVkIGJlbG93Og0KDQpTaWduZWQtb2ZmLWJ5OiBHcmVnIEt1cnog
PGdyb3VnQGthb2Qub3JnPg0KLS0tDQogaHcvOXBmcy85cC5jIHwgICAxNCAr
KysrKysrKysrKysrKw0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspDQoNCmRpZmYgLS1naXQgYS9ody85cGZzLzlwLmMgYi9ody85cGZzLzlw
LmMNCmluZGV4IGZhNTg4Nzc1NzBmNi4uNjc1ZTgzNDdhYWNjIDEwMDY0NA0K
LS0tIGEvaHcvOXBmcy85cC5jDQorKysgYi9ody85cGZzLzlwLmMNCkBAIC01
NTMsNiArNTUzLDExIEBAIHN0YXRpYyB2b2lkIGNvcm91dGluZV9mbiB2aXJ0
ZnNfcmVzZXQoVjlmc1BEVSAqcGR1KQ0KICNkZWZpbmUgUDlfUUlEX1RZUEVf
RElSICAgICAgICAgMHg4MA0KICNkZWZpbmUgUDlfUUlEX1RZUEVfU1lNTElO
SyAgICAgMHgwMg0KIA0KK3N0YXRpYyBib29sIHFpZF9pc19kaXIoVjlmc1FJ
RCAqcWlkcCkNCit7DQorICAgIHJldHVybiBxaWRwLT50eXBlICYgUDlfUUlE
X1RZUEVfRElSOw0KK30NCisNCiAjZGVmaW5lIFA5X1NUQVRfTU9ERV9ESVIg
ICAgICAgIDB4ODAwMDAwMDANCiAjZGVmaW5lIFA5X1NUQVRfTU9ERV9BUFBF
TkQgICAgIDB4NDAwMDAwMDANCiAjZGVmaW5lIFA5X1NUQVRfTU9ERV9FWENM
ICAgICAgIDB4MjAwMDAwMDANCkBAIC0xMzMxLDYgKzEzMzYsMTEgQEAgc3Rh
dGljIHZvaWQgY29yb3V0aW5lX2ZuIHY5ZnNfd2Fsayh2b2lkICpvcGFxdWUp
DQogICAgICAgICBnb3RvIG91dDsNCiAgICAgfQ0KIA0KKyAgICBpZiAobndu
YW1lcyAmJiAhcWlkX2lzX2RpcigmcWlkKSkgew0KKyAgICAgICAgZXJyID0g
LUVOT1RESVI7DQorICAgICAgICBnb3RvIG91dDsNCisgICAgfQ0KKw0KICAg
ICAvKg0KICAgICAgKiBCb3RoIGRwYXRoIGFuZCBwYXRoIGluaXRpYWxseSBw
b2luIHRvIGZpZHAuDQogICAgICAqIE5lZWRlZCB0byBoYW5kbGUgcmVxdWVz
dCB3aXRoIG53bmFtZXMgPT0gMA0KQEAgLTEzNTEsNiArMTM2MSwxMCBAQCBz
dGF0aWMgdm9pZCBjb3JvdXRpbmVfZm4gdjlmc193YWxrKHZvaWQgKm9wYXF1
ZSkNCiAgICAgICAgICAgICAgICAgZ290byBvdXQ7DQogICAgICAgICAgICAg
fQ0KICAgICAgICAgICAgIHN0YXRfdG9fcWlkKCZzdGJ1ZiwgJnFpZCk7DQor
ICAgICAgICAgICAgaWYgKChuYW1lX2lkeCArIDEpIDwgbnduYW1lcyAmJiAh
cWlkX2lzX2RpcigmcWlkKSkgew0KKyAgICAgICAgICAgICAgICBlcnIgPSAt
RU5PVERJUjsNCisgICAgICAgICAgICAgICAgZ290byBvdXQ7DQorICAgICAg
ICAgICAgfQ0KICAgICAgICAgICAgIHY5ZnNfcGF0aF9jb3B5KCZkcGF0aCwg
JnBhdGgpOw0KICAgICAgICAgfQ0KICAgICAgICAgbWVtY3B5KCZxaWRzW25h
bWVfaWR4XSwgJnFpZCwgc2l6ZW9mKHFpZCkpOw0K

--0-1116334162-1484655547=:22483--
