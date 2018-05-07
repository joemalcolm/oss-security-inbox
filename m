X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12126" "Monday" "7" "May" "2018" "17:35:30" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do6CyL4JQxhvXSx5a31KAZEP7PpEy29cyFp+bTeRm5=wzQ@mail.gmail.com>" "235" "[oss-security] Re: CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large filter value in ldapsearch" nil nil nil "5" "2018050715:35:30" "[oss-security] Re: CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large filter value in ldapsearch" (number mark "U       cbuissar@red May  7  235/12126 " thread-indent "\"[oss-security] Re: CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via large filter value in ldapsearch\"\n") "<CAKG8Do7DJOj05DgTnztiM7O780z3kXmKRoeNy6yB5_Yr1Uahwg@mail.gmail.com>" ("<CAKG8Do7DJOj05DgTnztiM7O780z3kXmKRoeNy6yB5_Yr1Uahwg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13612 invoked by uid 550); 7 May 2018 15:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13591 invoked from network); 7 May 2018 15:36:02 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=5dFdls40fq0KAYoue6iZyMlGpTH4WLag0d8mARtkydI=;
        b=rjPTS5yUyDe3fB62nPV5LyD+V/csw6YssiiLJT4NuZmbnOnw4Abp7F2KVwqk9PBc1G
         PieHFu1EKqKEMvVaWgK0ZLt4NR0+GzjBtbmcTb6k/WMpunP9PlwK0ikbiWXiDG3NWWs5
         KWfX9SsyMhU3G235wWjZswrmtxssrs8eevXuxgkKoosXuRxAnJCDn6qpP8uxNnMDvThy
         yqTRrSTT8uGuKF7PbapO8MyjunmV3wVnElfiInyMczojSZMLbTK4yEWhXxTu+E8OXnPS
         ciZzmTfDGFXFL8WTjaxEyaVetQ4hTT7rwGUbzBf7FKGar/t6KEiEDRiTjmtPoTmTd/FK
         ARnQ==
X-Gm-Message-State: ALQs6tDI9mrF6evz/p4poxIPGjy485pDeCSrZKBKNr47JGo7U7JXsQqi
	hzLlPmai2pF7Hf6JEMtOoZ7ga/kBOyRQBSNlUptgFg==
X-Google-Smtp-Source: AB8JxZpV+OB03hdoHCADES8JwLWG90yaYoDWQbKJbZtoMkuVJs1gVhQ9/Xuaxnh400v5xF7/M8WgcqzIGyehM6dLn90=
X-Received: by 2002:a6b:b889:: with SMTP id i131-v6mr40056017iof.300.1525707350921;
 Mon, 07 May 2018 08:35:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKG8Do7DJOj05DgTnztiM7O780z3kXmKRoeNy6yB5_Yr1Uahwg@mail.gmail.com>
References: <CAKG8Do7DJOj05DgTnztiM7O780z3kXmKRoeNy6yB5_Yr1Uahwg@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 7 May 2018 17:35:30 +0200
Message-ID: <CAKG8Do6CyL4JQxhvXSx5a31KAZEP7PpEy29cyFp+bTeRm5=wzQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000af2f23056b9f6c5d"
Subject: [oss-security] Re: CVE-2018-1089 389-ds-base: unauthenticated ns-slapd crash via
 large filter value in ldapsearch

--000000000000af2f23056b9f6c5d
Content-Type: multipart/alternative; boundary="000000000000af2f1f056b9f6c5b"

--000000000000af2f1f056b9f6c5b
Content-Type: text/plain; charset="UTF-8"

On Mon, May 7, 2018 at 5:30 PM, Cedric Buissart <cbuissar@redhat.com> wrote:

> Hi all,
>
> This is to disclose the following flaw, CVE-2018-1089 :
>
> 389-ds-base, a.k.a 389 Directory Server, https://pagure.io/389-ds-base/,
> is a highly usable, fully featured, reliable and secure LDAP server
> implementation. It handles many of the largest LDAP deployments in the
> world.
>
> 389-ds server did not properly handle characters needed to be escaped in
> its query filter. This could result in buffer overflows, from the heap
> or the stack, on larger filters.  An unauthenticated attacker could send
> a specially crafted LDAP request and crash the server. RCE has not been
> demonstrated at this time.
>
> Red Hat would like to thank Greg Kubok for alerting us of the issue.
>
>
> Reproducer1 :
> [root@server1 ~]# payload=$(printf '.*$%.0s' {1..1000})
> [root@server1 ~]# ldapsearch -h localhost -p 389 -x -b "dc=blah"
> "(&(|(telephoneNumber=*${payload}*)(uid=*${payload}*)(
> title=*${payload}*)(sn=*${payload}*)(ou=*${payload}*)(
> givenName=*${payload}*))(objectClass=posixaccount))"
> "telephoneNumber sshpubkeyfp ipaSshPubKey uid krbCanonicalName title
> loginShell uidNumber gidNumber sn homeDirectory mail krbPrincipalName
> givenName nsAccountLock"
>
> Reproducer2:
> [root@server1 ~]# perl -e 'print ".*\$" x (1400)' | ldapsearch -x -f-
> "(&(uid=%s)(objectClass=posixaccount))"
>
>
> Patch attached for versions 1.3.7 & 1.2.11
>
Patches are now attached for real.

>
> Thanks!
>
> --
> Cedric Buissart,
> Product Security
>



-- 
Cedric Buissart,
Product Security

--000000000000af2f1f056b9f6c5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, May 7, 2018 at 5:30 PM, Cedric Buissart <span dir=3D"ltr">&lt;<=
a href=3D"mailto:cbuissar@redhat.com" target=3D"_blank">cbuissar@redhat.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">H=
i all,<br><br>This is to disclose the following flaw, CVE-2018-1089 :<br><b=
r>389-ds-base, a.k.a 389 Directory Server, <a href=3D"https://pagure.io/389=
-ds-base/" target=3D"_blank">https://pagure.io/389-ds-base/</a><wbr>,<br>is=
 a highly usable, fully featured, reliable and secure LDAP server<br>implem=
entation. It handles many of the largest LDAP deployments in the<br>world.=
=C2=A0 <br><br>389-ds server did not properly handle characters needed to b=
e escaped in<br>its query filter. This could result in buffer overflows, fr=
om the heap<br>or the stack, on larger filters.=C2=A0 An unauthenticated at=
tacker could send<br>a specially crafted LDAP request and crash the server.=
 RCE has not been<br>demonstrated at this time.<br><br>Red Hat would like t=
o thank Greg Kubok for alerting us of the issue.<br><br><br>Reproducer1 :<b=
r>[root@server1 ~]# payload=3D$(printf &#39;.*$%.0s&#39; {1..1000})<br>[roo=
t@server1 ~]# ldapsearch -h localhost -p 389 -x -b &quot;dc=3Dblah&quot;<br=
>&quot;(&amp;(|(telephoneNumber=3D*${<wbr>payload}*)(uid=3D*${payload}*)(<w=
br>title=3D*${payload}*)(sn=3D*${<wbr>payload}*)(ou=3D*${payload}*)(<wbr>gi=
venName=3D*${payload}*))(<wbr>objectClass=3Dposixaccount))&quot;<br>&quot;t=
elephoneNumber sshpubkeyfp ipaSshPubKey uid krbCanonicalName title<br>login=
Shell uidNumber gidNumber sn homeDirectory mail krbPrincipalName<br>givenNa=
me nsAccountLock&quot;<br><br>Reproducer2:<br>[root@server1 ~]# perl -e &#3=
9;print &quot;.*\$&quot; x (1400)&#39; | ldapsearch -x -f- &quot;(&amp;(uid=
=3D%s)(objectClass=3D<wbr>posixaccount))&quot;<br><br><br>Patch attached fo=
r versions 1.3.7 &amp; 1.2.11<br></div></blockquote><div>Patches are now at=
tached for real.<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
br>Thanks!<span class=3D"HOEnZb"><font color=3D"#888888"><br clear=3D"all">=
<br>-- <br><div class=3D"m_-1131220615611433655gmail_signature"><div dir=3D=
"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Ced=
ric Buissart,<br>Product Security</div></div></div></div></div></div></div>=
</div>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Cedric Buissart,<br>Pr=
oduct Security</div></div></div></div></div></div></div></div>
</div></div>

--000000000000af2f1f056b9f6c5b--

--000000000000af2f23056b9f6c5d
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="v1.3.7.5-CVE-2018-1089-Crash-from-long-search-filter.patch"
Content-Disposition: attachment; 
	filename="v1.3.7.5-CVE-2018-1089-Crash-from-long-search-filter.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jgwep7k40

RnJvbSA3MWI4N2U2NzhiY2MwM2JiOWEwODAyZjdkZmZjOTdjZjM1NGVlNjlh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogTWFyayBSZXlub2xk
cyA8bXJleW5vbGRzQHJlZGhhdC5jb20+DQpEYXRlOiBUaHUsIDUgQXByIDIw
MTggMTQ6NTI6MzQgLTA0MDANClN1YmplY3Q6IFtQQVRDSF0gQ1ZFLTIwMTgt
MTA4OSAtIENyYXNoIGZyb20gbG9uZyBzZWFyY2ggZmlsdGVyDQoNCi0tLQ0K
IGxkYXAvc2VydmVycy9zbGFwZC9maWx0ZXIuYyB8ICA4ICsrKystLS0tDQog
bGRhcC9zZXJ2ZXJzL3NsYXBkL3V0aWwuYyAgIHwgMTAgKysrKystLS0tLQ0K
IDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQ0KDQpkaWZmIC0tZ2l0IGEvbGRhcC9zZXJ2ZXJzL3NsYXBkL2ZpbHRl
ci5jIGIvbGRhcC9zZXJ2ZXJzL3NsYXBkL2ZpbHRlci5jDQppbmRleCAyYWMz
ZDJjZDguLjM5M2E0ZGNlZSAxMDA2NDQNCi0tLSBhL2xkYXAvc2VydmVycy9z
bGFwZC9maWx0ZXIuYw0KKysrIGIvbGRhcC9zZXJ2ZXJzL3NsYXBkL2ZpbHRl
ci5jDQpAQCAtNDcyLDcgKzQ3Miw3IEBAIGdldF9zdWJzdHJpbmdfZmlsdGVy
KA0KICAgICAgICAgICAgIGYtPmZfc3ViX2luaXRpYWwgPSB2YWw7DQogICAg
ICAgICAgICAgZXZhbCA9IChjaGFyICopc2xhcGlfZXNjYXBlX2ZpbHRlcl92
YWx1ZSh2YWwsIC0xKTsNCiAgICAgICAgICAgICBpZiAoZXZhbCkgew0KLSAg
ICAgICAgICAgICAgICBpZiAoZnN0cl9sZW4gPCBzdHJsZW4oKmZzdHIpICsg
c3RybGVuKGV2YWwpICsgMSkgew0KKyAgICAgICAgICAgICAgICBpZiAoZnN0
cl9sZW4gPD0gc3RybGVuKCpmc3RyKSArIHN0cmxlbihldmFsKSArIDEpIHsN
CiAgICAgICAgICAgICAgICAgICAgIGZzdHJfbGVuICs9IChzdHJsZW4oZXZh
bCkgKyAxKSAqIDI7DQogICAgICAgICAgICAgICAgICAgICAqZnN0ciA9IHNs
YXBpX2NoX3JlYWxsb2MoKmZzdHIsIGZzdHJfbGVuKTsNCiAgICAgICAgICAg
ICAgICAgfQ0KQEAgLTQ4Niw3ICs0ODYsNyBAQCBnZXRfc3Vic3RyaW5nX2Zp
bHRlcigNCiAgICAgICAgICAgICBjaGFycmF5X2FkZCgmZi0+Zl9zdWJfYW55
LCB2YWwpOw0KICAgICAgICAgICAgIGV2YWwgPSAoY2hhciAqKXNsYXBpX2Vz
Y2FwZV9maWx0ZXJfdmFsdWUodmFsLCAtMSk7DQogICAgICAgICAgICAgaWYg
KGV2YWwpIHsNCi0gICAgICAgICAgICAgICAgaWYgKGZzdHJfbGVuIDwgc3Ry
bGVuKCpmc3RyKSArIHN0cmxlbihldmFsKSArIDEpIHsNCisgICAgICAgICAg
ICAgICAgaWYgKGZzdHJfbGVuIDw9IHN0cmxlbigqZnN0cikgKyBzdHJsZW4o
ZXZhbCkgKyAxKSB7DQogICAgICAgICAgICAgICAgICAgICBmc3RyX2xlbiAr
PSAoc3RybGVuKGV2YWwpICsgMSkgKiAyOw0KICAgICAgICAgICAgICAgICAg
ICAgKmZzdHIgPSBzbGFwaV9jaF9yZWFsbG9jKCpmc3RyLCBmc3RyX2xlbik7
DQogICAgICAgICAgICAgICAgIH0NCkBAIC01MDQsNyArNTA0LDcgQEAgZ2V0
X3N1YnN0cmluZ19maWx0ZXIoDQogICAgICAgICAgICAgZi0+Zl9zdWJfZmlu
YWwgPSB2YWw7DQogICAgICAgICAgICAgZXZhbCA9IChjaGFyICopc2xhcGlf
ZXNjYXBlX2ZpbHRlcl92YWx1ZSh2YWwsIC0xKTsNCiAgICAgICAgICAgICBp
ZiAoZXZhbCkgew0KLSAgICAgICAgICAgICAgICBpZiAoZnN0cl9sZW4gPCBz
dHJsZW4oKmZzdHIpICsgc3RybGVuKGV2YWwpICsgMSkgew0KKyAgICAgICAg
ICAgICAgICBpZiAoZnN0cl9sZW4gPD0gc3RybGVuKCpmc3RyKSArIHN0cmxl
bihldmFsKSArIDEpIHsNCiAgICAgICAgICAgICAgICAgICAgIGZzdHJfbGVu
ICs9IChzdHJsZW4oZXZhbCkgKyAxKSAqIDI7DQogICAgICAgICAgICAgICAg
ICAgICAqZnN0ciA9IHNsYXBpX2NoX3JlYWxsb2MoKmZzdHIsIGZzdHJfbGVu
KTsNCiAgICAgICAgICAgICAgICAgfQ0KQEAgLTUzMCw3ICs1MzAsNyBAQCBn
ZXRfc3Vic3RyaW5nX2ZpbHRlcigNCiAgICAgfQ0KIA0KICAgICBmaWx0ZXJf
Y29tcHV0ZV9oYXNoKGYpOw0KLSAgICBpZiAoZnN0cl9sZW4gPCBzdHJsZW4o
KmZzdHIpICsgMykgew0KKyAgICBpZiAoZnN0cl9sZW4gPD0gc3RybGVuKCpm
c3RyKSArIDMpIHsNCiAgICAgICAgIGZzdHJfbGVuICs9IDM7DQogICAgICAg
ICAqZnN0ciA9IHNsYXBpX2NoX3JlYWxsb2MoKmZzdHIsIGZzdHJfbGVuKTsN
CiAgICAgfQ0KZGlmZiAtLWdpdCBhL2xkYXAvc2VydmVycy9zbGFwZC91dGls
LmMgYi9sZGFwL3NlcnZlcnMvc2xhcGQvdXRpbC5jDQppbmRleCBkZGIyY2M4
OTkuLmNiNDZlZmIzZCAxMDA2NDQNCi0tLSBhL2xkYXAvc2VydmVycy9zbGFw
ZC91dGlsLmMNCisrKyBiL2xkYXAvc2VydmVycy9zbGFwZC91dGlsLmMNCkBA
IC0xNjEsNiArMTYxLDExIEBAIGRvX2VzY2FwZV9zdHJpbmcoDQogICAgICAg
ICAgICAgICAgICAgICBicmVhazsNCiAgICAgICAgICAgICAgICAgfQ0KICAg
ICAgICAgICAgICAgICBkbyB7DQorICAgICAgICAgICAgICAgICAgICBpZiAo
YnVmU3BhY2UgPCA0KSB7DQorICAgICAgICAgICAgICAgICAgICAgICAgbWVt
Y3B5KGJ1Zk5leHQsICIuLiIsIDIpOw0KKyAgICAgICAgICAgICAgICAgICAg
ICAgIGJ1Zk5leHQgKz0gMjsNCisgICAgICAgICAgICAgICAgICAgICAgICBn
b3RvIGJhaWw7DQorICAgICAgICAgICAgICAgICAgICB9DQogICAgICAgICAg
ICAgICAgICAgICBpZiAoZXNjID09IFVUSUxfRVNDQVBFX0JBQ0tTTEFTSCkg
ew0KICAgICAgICAgICAgICAgICAgICAgICAgIC8qICpzIGlzICdcXCcgKi8N
CiAgICAgICAgICAgICAgICAgICAgICAgICAvKiBJZiAqKHMrMSkgYW5kICoo
cysyKSBhcmUgYm90aCBoZXggZGlnaXRzLA0KQEAgLTE3OSwxMSArMTg0LDYg
QEAgZG9fZXNjYXBlX3N0cmluZygNCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKmJ1Zk5leHQrKyA9ICdcXCc7DQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tYnVmU3BhY2U7DQogICAgICAgICAgICAgICAgICAgICAg
ICAgfQ0KLSAgICAgICAgICAgICAgICAgICAgICAgIGlmIChidWZTcGFjZSA8
IDMpIHsNCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgbWVtY3B5KGJ1
Zk5leHQsICIuLiIsIDIpOw0KLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBidWZOZXh0ICs9IDI7DQotICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGdvdG8gYmFpbDsNCi0gICAgICAgICAgICAgICAgICAgICAgICB9DQogICAg
ICAgICAgICAgICAgICAgICAgICAgUFJfc25wcmludGYoYnVmTmV4dCwgMywg
IiUwMngiLCAqKHVuc2lnbmVkIGNoYXIgKilzKTsNCiAgICAgICAgICAgICAg
ICAgICAgICAgICBidWZOZXh0ICs9IDI7DQogICAgICAgICAgICAgICAgICAg
ICAgICAgYnVmU3BhY2UgLT0gMjsNCi0tIA0KMi4xMy42DQoNCg0K

--000000000000af2f23056b9f6c5d
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="v1.2.11.15-CVE-2018-1089-crash-in-long-search-filter.patch"
Content-Disposition: attachment; 
	filename="v1.2.11.15-CVE-2018-1089-crash-in-long-search-filter.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jgwep7kc1

RnJvbSBmYmQ0YTVmMzhjYzZlNTdiOGM3Y2FhZGE1ZTM5MDJlZjBjYjFjY2Rk
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrIFJleW5vbGRz
IDxtcmV5bm9sZHNAcmVkaGF0LmNvbT4KRGF0ZTogVGh1LCAxMiBBcHIgMjAx
OCAxNDo0NToyOCAtMDQwMApTdWJqZWN0OiBbUEFUQ0hdIENWRS0yMDE4LTEw
ODkgLSBjcmFzaCBpbiBsb25nIHNlYXJjaCBmaWx0ZXIKCi0tLQogbGRhcC9z
ZXJ2ZXJzL3NsYXBkL3V0aWwuYyB8IDE4ICsrKysrKysrKystLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvbGRhcC9zZXJ2ZXJzL3NsYXBkL3V0aWwuYyBi
L2xkYXAvc2VydmVycy9zbGFwZC91dGlsLmMKaW5kZXggOGMwYjdlZWY5Li5l
N2NjNGUzNTMgMTAwNjQ0Ci0tLSBhL2xkYXAvc2VydmVycy9zbGFwZC91dGls
LmMKKysrIGIvbGRhcC9zZXJ2ZXJzL3NsYXBkL3V0aWwuYwpAQCAtMTQ4LDYg
KzE0OCwxMSBAQCBkb19lc2NhcGVfc3RyaW5nICgKIAkJICAgIGJyZWFrOwog
CQl9CiAJCWRvIHsKKyAgICAgICAgICAgICAgICAgICAgaWYgKGJ1ZlNwYWNl
IDwgNCkgeworICAgICAgICAgICAgICAgICAgICAgICAgbWVtY3B5KGJ1Zk5l
eHQsICIuLiIsIDIpOworICAgICAgICAgICAgICAgICAgICAgICAgYnVmTmV4
dCArPSAyOworICAgICAgICAgICAgICAgICAgICAgICAgZ290byBiYWlsOwor
ICAgICAgICAgICAgICAgICAgICB9CiAJCSAgICBpZiAoZXNjID09IFVUSUxf
RVNDQVBFX0JBQ0tTTEFTSCkgewogCQkJLyogKnMgaXMgJ1xcJyAqLwogCQkJ
LyogSWYgKihzKzEpIGFuZCAqKHMrMikgYXJlIGJvdGggaGV4IGRpZ2l0cywK
QEAgLTE2MSwxNCArMTY2LDExIEBAIGRvX2VzY2FwZV9zdHJpbmcgKAogCQkJ
ICAgICpidWZOZXh0KysgPSAqczsgLS1idWZTcGFjZTsKIAkJCX0KIAkJICAg
IH0gZWxzZSB7ICAgIC8qIFVUSUxfRVNDQVBFX0hFWCAqLwotCQkJKmJ1Zk5l
eHQrKyA9ICdcXCc7IC0tYnVmU3BhY2U7Ci0JCQlpZiAoYnVmU3BhY2UgPCAz
KSB7Ci0JCQkgICAgbWVtY3B5KGJ1Zk5leHQsICIuLiIsIDIpOwotCQkJICAg
IGJ1Zk5leHQgKz0gMjsKLQkJCSAgICBnb3RvIGJhaWw7Ci0JCQl9Ci0JCQlQ
Ul9zbnByaW50ZihidWZOZXh0LCAzLCAiJTAyeCIsICoodW5zaWduZWQgY2hh
ciopcyk7Ci0JCQlidWZOZXh0ICs9IDI7IGJ1ZlNwYWNlIC09IDI7CisJCQkq
YnVmTmV4dCsrID0gJ1xcJzsKKyAgICAgICAgICAgICAgICAgICAgICAgIC0t
YnVmU3BhY2U7CisgICAgICAgICAgICAgICAgICAgICAgICBQUl9zbnByaW50
ZihidWZOZXh0LCAzLCAiJTAyeCIsICoodW5zaWduZWQgY2hhciopcyk7Cisg
ICAgICAgICAgICAgICAgICAgICAgICBidWZOZXh0ICs9IDI7CisgICAgICAg
ICAgICAgICAgICAgICAgICBidWZTcGFjZSAtPSAyOwogCQkgICAgfQogCSAg
ICAgICAgfSB3aGlsZSAoKytzIDw9IGxhc3QgJiYgCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgKGVzYyA9ICgqc3BlY2lhbCkoKHVuc2lnbmVkIGNoYXIp
KnMpKSk7Ci0tIAoyLjEzLjYKCg==

--000000000000af2f23056b9f6c5d--
