Received: (qmail 19887 invoked by uid 550); 19 Apr 2025 13:23:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23559 invoked from network); 19 Apr 2025 11:00:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rub.de; s=mail-2024;
	t=1745060414; bh=c/q3AMAtEek/vv1XcP3XNhiNA8S7ReoBu0wFP+zbHE0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J0dueCf9LqsExCPj0ECqbvYHiejmASfv0NbwVN+eeqyDviwHyazfTn0JhtVbDk4A1
	 Rxfnn++mhJ+KClFt0vFosQMcb6AGMPDxNK5XxzTmEXvp5+PnyCO/UIL/9NjwkeKjBV
	 P9+6a4Q0LPTCKf00nHd94yMloM2kM4OnFvhMKsyo4N/4LKSBLmzE99vO/ttKVdarMs
	 38dt3R1TC4IqOkYzOep0DX0UYkDfLmTDXR76MaOLqwINNZcpkGQ++CFn0ucMGB/TQT
	 vkxut9GOkHnVg7RRVke0Dt2SnF+XyT37ZSK1YFpXHDZtDqHQr0uD5LAIyl9NmOH9+l
	 YSyGSqUvsv7KQ==
X-Envelope-Sender: <fabian.baeumer@rub.de>
X-RUB-Notes: Internal origin=IPv6:2a05:3e00:c:1001::8693:2aec
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.7 at mx1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.1 at mail2.mail.ruhr-uni-bochum.de
Message-ID: <ee090687-f12a-460e-b16e-8106e8e51b3d@rub.de>
Date: Sat, 19 Apr 2025 13:00:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
References: <088f2e26-c56c-4045-a822-359d468cad2f@rub.de>
 <5134cbea-7c3f-4270-b70d-70d624fb6044@rub.de>
 <20250418232031.GA18802@openwall.com>
Content-Language: en-GB, de-DE
From: =?UTF-8?Q?Fabian_B=C3=A4umer?= <fabian.baeumer@rub.de>
In-Reply-To: <20250418232031.GA18802@openwall.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms010108050501000008030706"
Subject: Re: [oss-security] CVE-2025-32433: Unauthenticated Remote Code
 Execution in Erlang/OTP SSH

--------------ms010108050501000008030706
Content-Type: multipart/alternative;
 boundary="------------Z0cCqSQfatvU3I9hxEhTT0y1"

--------------Z0cCqSQfatvU3I9hxEhTT0y1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQWxleGFuZGVyLA0KDQo+IEhvdyBkaWQgeW91ciB0ZWFtIGZpbmQgdGhpcyB2dWxuZXJhYmls
aXR5PyAgTWFudWFsIGF1ZGl0aW5nPyAgRGlmZmVyZW50DQo+IHRvb2w/ICBBIGZvcm1hbCB2ZXJp
ZmljYXRpb24gcHJvamVjdD8NCldlIHVzZWQgYSB0ZWNobmlxdWUgY2FsbGVkIHN0YXRlIG1hY2hp
bmUgbGVhcm5pbmcgdG8gaW5mZXIgdGhlIHN0YXRlIA0KbWFjaGluZSBvZiB0aGUgRXJsYW5nL09U
UCBTU0ggc2VydmVyIGJ5IGludGVyYWN0aW9uLiBXaXRoIHRoZSBzdGF0ZSANCm1hY2hpbmUgYXQg
aGFuZCwgd2Ugbm90aWNlZCB1bmV4cGVjdGVkIHN0YXRlIHRyYW5zaXRpb25zIGR1cmluZyB0aGUg
DQpoYW5kc2hha2UgY2F1c2VkIGJ5IFNTSF9NU0dfQ0hBTk5FTF9PUEVOIG1lc3NhZ2VzLiBJbiBw
YXJ0aWN1bGFyLCANCnNlbmRpbmcgU1NIX01TR19DSEFOTkVMX1JFUVVFU1Qgd2l0aG91dCBTU0hf
TVNHX0NIQU5ORUxfT1BFTiBjYXVzZWQgdGhlIA0KY29ubmVjdGlvbiB0byB0ZXJtaW5hdGUsIHdo
aWxlIHNlbmRpbmcgU1NIX01TR19DSEFOTkVMX09QRU4gZmlyc3QgDQpjaGFuZ2VkIHRoaXMgYmVo
YXZpb3IuIFRoaXMgbGVkIHVzIHRvIHN1c3BlY3QgRXJsYW5nL09UUCBTU0ggbWlnaHQgYmUgDQp2
dWxuZXJhYmxlIHRvIGVhcmx5IGNvbm5lY3Rpb24gcHJvdG9jb2wgbWVzc2FnZSBpbmplY3Rpb27i
gJR3aGljaCB0dXJuZWQgDQpvdXQgdG8gYmUgdHJ1ZS4NCg0KPiBGb3Igb3RoZXJzIGxvb2tpbmcg
dGhpcyB1cCwgaXQncyBhY3R1YWxseSBTU0hhbWJsZSAod2l0aG91dCB0aGUgInMiKToNClRoYW5r
cyBmb3IgdGhlIGNvcnJlY3Rpb24gOikNCg0KQmVzdCByZWdhcmRzLA0KDQpGYWJpYW4gQsOkdW1l
cg0KDQpNLiBTYy4gRmFiaWFuIELDpHVtZXINCg0KQ2hhaXIgZm9yIE5ldHdvcmsgYW5kIERhdGEg
U2VjdXJpdHkNClJ1aHIgVW5pdmVyc2l0eSBCb2NodW0NClVuaXZlcnNpdMOkdHNzdHIuIDE1MCwg
QnVpbGRpbmcgTUMgNC8xNDUNCjQ0NzgwIEJvY2h1bQ0KR2VybWFueQ0KDQpBbSAxOS4wNC4yMDI1
IHVtIDAxOjIwIHNjaHJpZWIgU29sYXIgRGVzaWduZXI6DQo+IEhpIEZhYmlhbiwNCj4NCj4gVGhh
bmsgeW91IHZlcnkgbXVjaCBmb3IgdGhpcyBkaXNjb3ZlcnkgYW5kIGZvciB0aGUgYWRkaXRpb25h
bCBkZXRhaWwuDQo+DQo+IE9uIEZyaSwgQXByIDE4LCAyMDI1IGF0IDAyOjAxOjQ0UE0gKzAyMDAs
IEZhYmlhbiBCw6R1bWVyIHdyb3RlOg0KPj4gTm93LCB3aGF0IHByZXZlbnRlZCBkZXRlY3Rpb24g
b2YgdGhpcyB2dWxuZXJhYmlsaXR5IGJ5IHRvb2xzIGxpa2UNCj4+IFNTSGFtYmxlcywgaXMgdGhh
dCB0aGUgc2VydmVyIGRvZXMgbm90IHJlc3BvbmQgdG8gdGhlc2UgcmVxdWVzdHMuDQo+IEZvciBv
dGhlcnMgbG9va2luZyB0aGlzIHVwLCBpdCdzIGFjdHVhbGx5IFNTSGFtYmxlICh3aXRob3V0IHRo
ZSAicyIpOg0KPg0KPiBodHRwczovL3d3dy5ydW56ZXJvLmNvbS9zc2hhbWJsZS8NCj4gaHR0cHM6
Ly9naXRodWIuY29tL3J1blplcm9JbmMvc3NoYW1ibGUNCj4NCj4gSG93IGRpZCB5b3VyIHRlYW0g
ZmluZCB0aGlzIHZ1bG5lcmFiaWxpdHk/ICBNYW51YWwgYXVkaXRpbmc/ICBEaWZmZXJlbnQNCj4g
dG9vbD8gIEEgZm9ybWFsIHZlcmlmaWNhdGlvbiBwcm9qZWN0Pw0KPg0KPj4+ICMjIyBBbSBJIGFm
ZmVjdGVkPw0KPj4+DQo+Pj4gQWxsIHVzZXJzIHJ1bm5pbmcgYW4gU1NIIHNlcnZlciBiYXNlZCBv
biB0aGUgRXJsYW5nL09UUCBTU0ggbGlicmFyeQ0KPj4+IGFyZSBsaWtlbHkgdG8gYmUgYWZmZWN0
ZWQgYnkgdGhpcyB2dWxuZXJhYmlsaXR5LiBJZiB5b3VyIGFwcGxpY2F0aW9uDQo+Pj4gdXNlcyBF
cmxhbmcvT1RQIFNTSCB0byBwcm92aWRlIHJlbW90ZSBhY2Nlc3MsIGFzc3VtZSB5b3UgYXJlIGFm
ZmVjdGVkLg0KPiBUaGlzIGhhcyBzb21lIGFkZGl0aW9uYWwgZGV0YWlsIG9uIEVsaXhpci9QaG9l
bml4Og0KPg0KPiBodHRwczovL3BhcmF4aWFsLmlvL2Jsb2cvZXJsYW5nLXNzaA0KPg0KPiAiVGhl
IGRlZmF1bHQgY29uZmlndXJhdGlvbiBmb3IgUGhvZW5peCBkb2VzIG5vdCBleHBvc2UgdGhlIEVy
bGFuZyBTU0gNCj4gZGFlbW9uIHRvIHRoZSBwdWJsaWMgaW50ZXJuZXQuIEl0IGlzIHRlY2huaWNh
bGx5IHBvc3NpYmxlIHlvdSBhcmUNCj4gdnVsbmVyYWJsZSBpZiB5b3VyIGFwcGxpY2F0aW9uIGRv
ZXMgZXhwb3NlIEVybGFuZydzIFNTSCBkYWVtb24sIGZvcg0KPiBleGFtcGxlIEVsaXhpciBzZnRw
IGNsaWVudHMgZG8gdGhpcy4iDQo+DQo+IFJlZ2FyZGluZyBNYXR0IEtlZWxleSdzIGV4cGxvaXQg
SSBwb3N0ZWQgeWVzdGVyZGF5LCB0aGV5IG5vdyBoYXZlIGEgYmxvZw0KPiBwb3N0IGV4cGxhaW5p
bmcgaG93IHRoZSBleHBsb2l0IHdhcyBjcmVhdGVkIG1vc3RseSBieSBBSToNCj4NCj4gaHR0cHM6
Ly9wbGF0Zm9ybXNlY3VyaXR5LmNvbS9ibG9nL0NWRS0yMDI1LTMyNDMzLXBvYw0KPg0KPiBUaGF0
J3MgdmVyeSBpbXByZXNzaXZlLCBhbHRob3VnaCBpdCBtaWdodCBoYXZlIGJlZW4gaGVscGVkIGJ5
IHRoZSBmaXgNCj4gY29udGFpbmluZyBhIHJlZ3Jlc3Npb24gdGVzdCwgd2hpY2ggYWxyZWFkeSB3
YXMgYWxtb3N0IGEgcHVibGljIFBvQzoNCj4NCj4gaHR0cHM6Ly9naXRodWIuY29tL2VybGFuZy9v
dHAvY29tbWl0LzZlZWYwNDEzMGFmYzhiMGNjYjYzYzlhMGQ4NjUwMjA5Y2Y1NDg5MmYjZGlmZi0x
NTZhNjMyOTU3MGUzMTFjODJiNDBjMzJkMTlhY2IzN2VmNmQwMzMzOTIxOWVhMThjZDJhMmE0ZTU2
NDljOGU1UjM5MA0KPg0KPiBhcyBpdCBpbmNsdWRlZCB0aGUgbWFpbiBzdGVwczoNCj4NCj4gZWFy
bHlfcmNlKENvbmZpZykgLT4NCj4gWy4uLl0NCj4gICAgICAgICAgICAge3NlbmQsIGhlbGxvfSwN
Cj4gICAgICAgICAgICAge3NlbmQsIHNzaF9tc2dfa2V4aW5pdH0sDQo+ICAgICAgICAgICAgIHtt
YXRjaCwgI3NzaF9tc2dfa2V4aW5pdHtfPSdfJ30sIHJlY2VpdmVfbXNnfSwNCj4gICAgICAgICAg
ICAge3NlbmQsIFNzaE1zZ0NoYW5uZWxPcGVufSwNCj4gICAgICAgICAgICAge3NlbmQsIFNzaE1z
Z0NoYW5uZWxSZXF1ZXN0fSwNCj4NCj4gQWxleGFuZGVyDQo=

--------------Z0cCqSQfatvU3I9hxEhTT0y1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Hi Alexander,</p>
    <p>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">How did your team find this =
vulnerability?  Manual auditing?  Different
tool?  A formal verification project?
</pre>
      </blockquote>
      We used a technique called state machine learning to infer the
      state machine of the Erlang/OTP SSH server by interaction. With
      the state machine at hand, we noticed unexpected state transitions
      during the handshake caused by SSH_MSG_CHANNEL_OPEN messages. In
      particular, sending SSH_MSG_CHANNEL_REQUEST without
      SSH_MSG_CHANNEL_OPEN caused the connection to terminate, while
      sending SSH_MSG_CHANNEL_OPEN first changed this behavior. This led
      us to suspect Erlang/OTP SSH might be vulnerable to early
      connection protocol message injection<span class=3D"BxUVEf ILfuVd"
        lang=3D"de"><span class=3D"hgKElc">=E2=80=94which turned out to be =
true.</span></span></p>
    <blockquote type=3D"cite">
      <pre wrap=3D"" class=3D"moz-quote-pre">For others looking this up, it=
's actually SSHamble (without the "s"):</pre>
    </blockquote>
    Thanks for the correction :)
    <p>Best regards,</p>
    <p>Fabian B=C3=A4umer</p>
    <pre class=3D"moz-signature" cols=3D"72">M. Sc. Fabian B=C3=A4umer

Chair for Network and Data Security
Ruhr University Bochum
Universit=C3=A4tsstr. 150, Building MC 4/145
44780 Bochum
Germany</pre>
    <div class=3D"moz-cite-prefix">Am 19.04.2025 um 01:20 schrieb Solar
      Designer:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20250418232031.GA18802@openwall.com">
      <pre wrap=3D"" class=3D"moz-quote-pre">Hi Fabian,

Thank you very much for this discovery and for the additional detail.

On Fri, Apr 18, 2025 at 02:01:44PM +0200, Fabian B=C3=A4umer wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">Now, what prevented detectio=
n of this vulnerability by tools like=20
SSHambles, is that the server does not respond to these requests.
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">
For others looking this up, it's actually SSHamble (without the "s"):

<a class=3D"moz-txt-link-freetext" href=3D"https://www.runzero.com/sshamble=
/">https://www.runzero.com/sshamble/</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/runZeroInc/ss=
hamble">https://github.com/runZeroInc/sshamble</a>

How did your team find this vulnerability?  Manual auditing?  Different
tool?  A formal verification project?

</pre>
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <pre wrap=3D"" class=3D"moz-quote-pre">### Am I affected?

All users running an SSH server based on the Erlang/OTP SSH library=20
are likely to be affected by this vulnerability. If your application=20
uses Erlang/OTP SSH to provide remote access, assume you are affected.
</pre>
        </blockquote>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">
This has some additional detail on Elixir/Phoenix:

<a class=3D"moz-txt-link-freetext" href=3D"https://paraxial.io/blog/erlang-=
ssh">https://paraxial.io/blog/erlang-ssh</a>

"The default configuration for Phoenix does not expose the Erlang SSH
daemon to the public internet. It is technically possible you are
vulnerable if your application does expose Erlang's SSH daemon, for
example Elixir sftp clients do this."

Regarding Matt Keeley's exploit I posted yesterday, they now have a blog
post explaining how the exploit was created mostly by AI:

<a class=3D"moz-txt-link-freetext" href=3D"https://platformsecurity.com/blo=
g/CVE-2025-32433-poc">https://platformsecurity.com/blog/CVE-2025-32433-poc<=
/a>

That's very impressive, although it might have been helped by the fix
containing a regression test, which already was almost a public PoC:

<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/erlang/otp/co=
mmit/6eef04130afc8b0ccb63c9a0d8650209cf54892f#diff-156a6329570e311c82b40c32=
d19acb37ef6d03339219ea18cd2a2a4e5649c8e5R390">https://github.com/erlang/otp=
/commit/6eef04130afc8b0ccb63c9a0d8650209cf54892f#diff-156a6329570e311c82b40=
c32d19acb37ef6d03339219ea18cd2a2a4e5649c8e5R390</a>

as it included the main steps:

early_rce(Config) -&gt;
[...]
           {send, hello},
           {send, ssh_msg_kexinit},
           {match, #ssh_msg_kexinit{_=3D'_'}, receive_msg},
           {send, SshMsgChannelOpen},
           {send, SshMsgChannelRequest},

Alexander
</pre>
    </blockquote>
  </body>
</html>

--------------Z0cCqSQfatvU3I9hxEhTT0y1--

--------------ms010108050501000008030706
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCCEeww
ggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYTAkRFMSsw
KQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYDVQQLDBZULVN5
c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFsUm9vdCBDbGFzcyAy
MB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNVBAYTAkRFMUUwQwYDVQQK
EzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZvcnNjaHVuZ3NuZXR6ZXMg
ZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERGTi1WZXJlaW4gQ2VydGlmaWNhdGlv
biBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMtg1/9moUHN0vqH
l4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZsFVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8F
XRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0peQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+Ba
L2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qL
NupOkSk9s1FcragMvp0049ENF4N1xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz
9AkH4wKGMUZrAcUQDBHHWekCAwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQU
k+PYMiba1fFKpZFK4OpL4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYD
VR0TAQH/BAgwBgEB/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGC
LB4wCAYGZ4EMAQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUv
cmwvVGVsZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYB
BQUHMAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5jZXIw
DQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4eTizDnS6
dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/MOaZ/SLick0+
hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3SPXez7vTXTf/D6OWS
T1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc22CzeIs2LgtjZeOJVEqM7
h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bPZYoaorVyGTkwggWsMIIElKAD
AgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYDVQQGEwJERTFFMEMGA1UEChM8VmVy
ZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYu
MRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRERk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0
aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcNMzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUx
RTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9lcmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5n
c25ldHplcyBlLiBWLjEQMA4GA1UECwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9i
YWwgSXNzdWluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp
1xCeOdfZojDbchwFfylfS2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6W
LkDh0YNMZj0cZGnlm6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mI
TQ5HjUhfZZkQ0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUk
P7agCwf9TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22M
ZD08WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAdBgNV
HQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK4OpL4qIM
z+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9v
dC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYBBQUHAQEEgdAwgc0wMwYI
KwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1TZXJ2ZXIvT0NTUDBKBggrBgEF
BQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY2FjZXJ0
L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9jZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJv
b3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/
DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCN
T1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7Ln8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+
lgQCXISoKTlslPwQkgZ7nu7YRrQbtQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v
9NsH1VuEGMGpuEvObJAaguS5Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7
EUkp2KgtdRXYShjqFu9VNCIaE40GMIIHIjCCBgqgAwIBAgIMKEY6FiZdyM744mtLMA0GCSqGSIb3
DQEBCwUAMIGNMQswCQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVp
bmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUw
IwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIzMDMzMTEwNTcxM1oXDTI2
MDMzMDEwNTcxM1owgZoxCzAJBgNVBAYTAkRFMSEwHwYDVQQKDBhSdWhyLVVuaXZlcnNpdGFldCBC
b2NodW0xLDAqBgNVBAsMI0NoYWlyIGZvciBOZXR3b3JrIGFuZCBEYXRhIFNlY3VyaXR5MRAwDgYD
VQQEDAdCYWV1bWVyMQ8wDQYDVQQqDAZGYWJpYW4xFzAVBgNVBAMMDkZhYmlhbiBCYWV1bWVyMIIC
IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtUXof3QfwCyKSjiHcwXSMnDhFiuJW24OoEiy
77FbR0TMr6oJHCiVMnr9j/tSQEktkoLWOSOziyC38nc8/Bdr5goeZ5XBCsp5PmgGN8s+i17vQVV/
5e6sRu39wImM0AFZ/b0/rxJ4RVhqknnxocxwDweMjGxWRolSy69wSh96kdW0UcBGXS3TTiA9p6xY
UO9/VuF4uJIrzRrbwzhXqbDCIzTnthiOGnUzjQcALf/7omQy+A/x1OXSLi35gKXXALKWFbbHEJjW
H4ION4bwGyHIw/MyqGbPeSf47X5M2Wu5jHqknhQogw+5oVYNmaoT7+Zw8KyNA4yeQ2wDTjwziiCg
ENpK21oY1n/8klBvHw/qVXccOzYrOZYoQkBO1GpThbySbz1k0WCT/47bFfXupqPzBbKp5NqHdoxU
ucR7n8He0e9liWi2xVIg4x9QH/6zm4NPcDNmprVtozZQ2/WBZMn1ungqtVeiBp1NseBgjJXCW41a
CUH9EDdR6fto+5M5+SQWm6mGVWgaEXNudZ5b1Q5KnldMYFfwOciZJMPgDZYmP4cp3p++nYF80Axv
F7AK8lo2y8Z+/EgB1XAqn7H0V8v41p1H2nbHNJwnLga2OiLQZmys+RZQwCuQNWFpV56X9mGD+NrF
e9Z3i6PXAYQ8jb9Fw1P2mpyweHfT1liGw9pM8o8CAwEAAaOCAnEwggJtMD4GA1UdIAQ3MDUwDwYN
KwYBBAGBrSGCLAEBBDAQBg4rBgEEAYGtIYIsAQEECzAQBg4rBgEEAYGtIYIsAgEECzAJBgNVHRME
AjAAMA4GA1UdDwEB/wQEAwIF4DAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwHQYDVR0O
BBYEFNYVlkZ24IxVgUdDwzqJo3NFXWTfMB8GA1UdIwQYMBaAFGs6mIv58lOJ2uCtsjIeCR/oqjt0
MEMGA1UdEQQ8MDqBFWZhYmlhbi5iYWV1bWVyQHJ1Yi5kZYEhZmFiaWFuLmJhZXVtZXJAcnVoci11
bmktYm9jaHVtLmRlMIGNBgNVHR8EgYUwgYIwP6A9oDuGOWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUv
ZGZuLWNhLWdsb2JhbC1nMi9wdWIvY3JsL2NhY3JsLmNybDA/oD2gO4Y5aHR0cDovL2NkcDIucGNh
LmRmbi5kZS9kZm4tY2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2FjcmwuY3JsMIHbBggrBgEFBQcBAQSB
zjCByzAzBggrBgEFBQcwAYYnaHR0cDovL29jc3AucGNhLmRmbi5kZS9PQ1NQLVNlcnZlci9PQ1NQ
MEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMS5wY2EuZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHVi
L2NhY2VydC9jYWNlcnQuY3J0MEkGCCsGAQUFBzAChj1odHRwOi8vY2RwMi5wY2EuZGZuLmRlL2Rm
bi1jYS1nbG9iYWwtZzIvcHViL2NhY2VydC9jYWNlcnQuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQA2
TUR/4UBApxuFbGVWzAkFxAfnGjlYUhVRhCext7xKms1E6tf6umVjXcSmdry1ELR2j0+6lbwrunNU
mNud5kC8Q8qhzCoY7iWMdh4eO/evWOCG0sWqhvKfCpSG2FZz6xsd6+VK0OGZAGcsoZwqMLKS6gzs
G3R37PIPwqPmjL1J5GuPguDVO/HCIyN2/+PDP/WLoYPii5Z93EDpxFXxQK9kC76WL6S3qejPgWqp
FbLT8ADBgMFT40/JVUW49pRdu5TFNLc3QF6LdWIO3HU5fm4x1AwK/U1vsJnStXH9Ogsk6GusC61E
52ZAQpGDClMQWBnRJoO9mi8SWKWmmSgvLuqpMYIGGDCCBhQCAQEwgZ4wgY0xCzAJBgNVBAYTAkRF
MUUwQwYDVQQKDDxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVuIEZvcnNjaHVu
Z3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsMB0RGTi1QS0kxJTAjBgNVBAMMHERGTi1WZXJlaW4gR2xv
YmFsIElzc3VpbmcgQ0ECDChGOhYmXcjO+OJrSzANBglghkgBZQMEAgMFAKCCA0owGAYJKoZIhvcN
AQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjUwNDE5MTEwMDA2WjBPBgkqhkiG9w0B
CQQxQgRAgiUsq2vc5A8GpL2pgfHuIziwWdxSYmHV1b5odEsAILL4ZLZttW3+K9Z0gumWM9zC/loI
fUlmp2Lli6qIeOtwTTCBrwYJKwYBBAGCNxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UE
Cgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1bmdzbmV0emVz
IGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEdsb2JhbCBJc3N1
aW5nIENBAgwoRjoWJl3Izvjia0swgbEGCyqGSIb3DQEJEAILMYGhoIGeMIGNMQswCQYDVQQGEwJE
RTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hlbiBGb3JzY2h1
bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQDDBxERk4tVmVyZWluIEds
b2JhbCBJc3N1aW5nIENBAgwoRjoWJl3Izvjia0swggFXBgkqhkiG9w0BCQ8xggFIMIIBRDALBglg
hkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA0GCCqGSIb3DQMCAgEFMA0GCCqGSIb3
DQMCAgEFMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEFMAcGBSsOAwIaMAsGCWCGSAFlAwQCATALBglg
hkgBZQMEAgIwCwYJYIZIAWUDBAIDMAsGCWCGSAFlAwQCBDALBglghkgBZQMEAgcwCwYJYIZIAWUD
BAIIMAsGCWCGSAFlAwQCCTALBglghkgBZQMEAgowCwYJKoZIhvcNAQEBMAsGCSuBBRCGSD8AAjAI
BgYrgQQBCwAwCAYGK4EEAQsBMAgGBiuBBAELAjAIBgYrgQQBCwMwCwYJK4EFEIZIPwADMAgGBiuB
BAEOADAIBgYrgQQBDgEwCAYGK4EEAQ4CMAgGBiuBBAEOAzANBgkqhkiG9w0BAQEFAASCAgBVWOma
x/Bff3X+dNdJlSwWtK/ExnD7fFjDQLQhyPqJcq1hifToJtk5ZRF/vcfBgZXLy+wJtC7mVI1kskwz
Yy5n2TdHsSs+Yerk0j+IdxyLQBgLrGGnesrukjpO9HACgpfms90GSOpjWtjWi2TFJuo4e/kQwCeT
JAPdjvk/o+p7I+xjzigETed8UAQG4Line7/9lt5OLK61Sz1WlEmWQ8R+Agb+/7r/um6c77+ScUC5
SZkmZeNEl8vt43rDD0KqzQycjMtZQdolUNX9btgNVo1r8uNgrCszfiEC4YrfmI5p1TmTfJmkg1M4
nQrcitLfqEa6xUE2qwVa+qh3x101+EQg08O1KtQGqfXZeYZ4TGtVeUUD/yCFylZtjnFVZkwdLSJd
SfXnW/gwmeJ/xXJSm8u5iDZqA9CJDPmwx7BL/EaMGymk1szy5FS7WaHJrq3UZ9WN4Sw5EeN6zUWp
9D+lfkcZcZL5UiSyaaQ+wzu4KjPT56iaw9vMvOhI+Y0hjOMsn29puxIdqW7ghby8NvXORWjmlbov
xWVMNGB4sQaBFscYs6As+QwCKg4gL7AN42VAT+kVMKHXm8WsOZrrzdYn6yN2ZwLqQ54dSf+zttYk
rlT8L0i6L0v990mLDM59FB5spOW1I1p3B3DM1DLQBIWZheaqQmNdBK/HkDz9X6qPOvWgTQAAAAAA
AA==

--------------ms010108050501000008030706--
