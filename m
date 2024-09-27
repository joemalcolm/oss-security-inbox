Received: (qmail 7564 invoked by uid 550); 27 Sep 2024 15:22:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23633 invoked from network); 27 Sep 2024 12:49:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rub.de; s=mail-2017;
	t=1727441347; bh=Vc6nAR3hnHArlvZvQvxRp6XnO1F7U8P222wyov1SLXg=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=QIqgwnA68e5K+A17FX+owECWvttWtZYso+mj9NWM3TaMgWRbkIcYhWt9uzllujf8+
	 fjy0s6VXd7cG95VCM3AAoeS8Xib+9moJNtor+mEaODXolN1fBxWMZOWnYWOEOpD6wh
	 KJcu7aPBR0rCvPoXOrfR/NIFvzDud3l2hQeFoUC4=
X-Envelope-Sender: <fabian.baeumer@rub.de>
X-RUB-Notes: Internal origin=134.147.42.236
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.7 at mx3.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.2.1 at mail2.mail.ruhr-uni-bochum.de
Message-ID: <dbf738ce-d236-4c8b-864d-900d4e7c3238@rub.de>
Date: Fri, 27 Sep 2024 14:49:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
 <ZvR8tR8v-6gpjLsP@itl-email>
 <CAN_LGv2QzuonfGdOsN88Qpe479xupfceCLYkv0yQFtRdf3CFNQ@mail.gmail.com>
Content-Language: en-GB, de-DE
From: =?UTF-8?Q?Fabian_B=C3=A4umer?= <fabian.baeumer@rub.de>
In-Reply-To: <CAN_LGv2QzuonfGdOsN88Qpe479xupfceCLYkv0yQFtRdf3CFNQ@mail.gmail.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-512; boundary="------------ms040100090709060405060707"
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

--------------ms040100090709060405060707
Content-Type: multipart/alternative;
 boundary="------------lCS46s8lKp5ngOrR0DqdWYza"

--------------lCS46s8lKp5ngOrR0DqdWYza
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PiBJIGRvbid0IHRoaW5rIHRoYXQgYSBzZWVkZWQgUFJGICh3aXRoIGEgcGVyLXNlcnZlciBzZWVk
KSB3b3VsZCBtZWV0DQo+IHRoZSByZXF1aXJlbWVudHMgaGVyZS4NCkkgdGhpbmsgeW91IGFyZSBy
aWdodC4gV2hlbiBJIHdyb3RlIG15IHJlc3BvbnNlIHllc3RlcmRheSBJIHdhc24ndCBmdWxseSAN
CmF3YXJlIGhvdyBHcmF2YXRhciBpcyBzdXBwb3NlZCB0byBiZSB1c2VkLiBJIGFsd2F5cyB0aG91
Z2h0IG9mIEdyYXZhdGFyIA0KYXMgYSBzZXJ2aWNlIHRvIGdlbmVyYXRlIHVuaXF1ZSBhdmF0YXIg
aW1hZ2VzLg0KDQpOb3csIHRoaXMgbGVhdmVzIG1lIHdpdGggYSBmZXcgb2JzZXJ2YXRpb25zOg0K
DQogMS4gVGhlICdzaG91bGQgYmUgdGFrZW4nIGZyb20gR3JhdmF0YXIncyBkb2N1bWVudGF0aW9u
IHNob3VsZCBiZSAnbXVzdA0KICAgIGJlIHRha2VuJyB0byBlbnN1cmUgY29uc2lzdGVudCB1c2Vy
IGhhc2hlcyAodGhlcmVmb3JlIHVzaW5nIE1ENSBpbg0KICAgIHRoZSBmaXJzdCBwbGFjZSByZW5k
ZXJlZCBHcmF2YXRhciB1c2VsZXNzIGlmIEdyYXZhdGFyIGRvZXNuJ3QgbWF0Y2gNCiAgICBhZ2Fp
bnN0IE1ENSBoYXNoZXMgYXMgd2VsbCkuDQogMi4gVGhlIGluZm9ybWF0aW9uIGxlYWthZ2Ugd2l0
aCBHcmF2YXRhciBpcyBpbi1zcGVjLiBGaXhpbmcgdGhlDQogICAgaW5mb3JtYXRpb24gbGVha2Fn
ZSB3b3VsZCBiZSBwb3NzaWJsZSBidXQgcmVxdWlyZXMgY2hhbmdlcyBvbg0KICAgIEdyYXZhdGFy
J3Mgc2lkZSBieSBpbXBsZW1lbnRpbmcgYSBzeW1tZXRyaWMgY2lwaGVyIGluc3RlYWQgb2YgYSBo
YXNoDQogICAgKGFzIHN1Z2dlc3RlZDsgYSBoYXNoIHdvdWxkbid0IGJlIHRyYWN0YWJsZSBhbnkg
bW9yZSBiZWNhdXNlDQogICAgR3JhdmF0YXIgd291bGQgbmVlZCB0byBoYXNoIGV2ZXJ5IHVzZXIn
cyBlbWFpbCBhZGRyZXNzIHdpdGggZXZlcnkNCiAgICByZWdpc3RlcmVkIHNlZWQgd2hlbiB1c2lu
ZyBzZWVkZWQgUFJGKS4gUHJpb3IgaGFzaGluZyB3b3VsZG4ndCBldmVuDQogICAgYmUgcmVxdWly
ZWQgZ2l2ZW4gdGhhdCBib3RoIHNpZGVzIC0gR3JhdmF0YXIgYW5kIHRoZSBzaXRlIGl0c2VsZiAt
DQogICAgaGF2ZSBhY2Nlc3MgdG8gdGhlIHVzZXIncyBlbWFpbCBhZGRyZXNzIGFueXdheS4NCiAz
LiBJdCBtYXkgYmUgYWR2aXNhYmxlIHRvIG5vdCB1c2UgR3JhdmF0YXIgYXMgdGhlIGRlZmF1bHQg
KG5vdCBzdXJlIGlmDQogICAgdGhpcyBpcyB0aGUgY2FzZSBoZXJlKS4gSW5zdGVhZCwgbGV0IHVz
ZXIncyBjaG9vc2UgaXQgYW5kIGxldCB0aGVtDQogICAga25vdyBhYm91dCB0aGUgcG90ZW50aWFs
IGluZm9ybWF0aW9uIGxlYWthZ2UuDQogNC4gVGhlIGZpeCBkb2VzIG5vdCBmaXggd2hhdCBpdCB0
cmllcyB0byBmaXguDQogNS4gQXNzaWduaW5nIGEgQ1ZFIGZvciBhbiBpbi1zcGVjIGluZm9ybWF0
aW9uIGxlYWthZ2Ugc2VlbXMgbm90IHVzZWZ1bA0KICAgIHRvIG1lLiBPdGhlcndpc2UsIGV2ZXJ5
IHNpbmdsZSBwcm9kdWN0IHVzaW5nIEdyYXZhdGFyIHdvdWxkIGJlDQogICAgYWZmZWN0ZWQgYnkg
dGhpcy4NCg0KTS4gU2MuIEZhYmlhbiBCw6R1bWVyDQoNCkNoYWlyIGZvciBOZXR3b3JrIGFuZCBE
YXRhIFNlY3VyaXR5DQpSdWhyIFVuaXZlcnNpdHkgQm9jaHVtDQpVbml2ZXJzaXTDpHRzc3RyLiAx
NTAsIEJ1aWxkaW5nIE1DIDQvMTQ1DQo0NDc4MCBCb2NodW0NCkdlcm1hbnkNCg0KQW0gMjcuMDku
MjAyNCB1bSAxNDoyNSBzY2hyaWViIEFsZXhhbmRlciBQYXRyYWtvdjoNCj4gT24gVGh1LCBTZXAg
MjYsIDIwMjQgYXQgNToxOeKAr0FNIERlbWkgTWFyaWUgT2Jlbm91cg0KPiA8ZGVtaUBpbnZpc2li
bGV0aGluZ3NsYWIuY29tPiB3cm90ZToNCj4+IE9uIFdlZCwgU2VwIDI1LCAyMDI0IGF0IDA2OjI4
OjE2QU0gKzAwMDAsIEVueGluIFhpZSB3cm90ZToNCj4+PiBTZXZlcml0eTogbG93DQo+Pj4NCj4+
PiBBZmZlY3RlZCB2ZXJzaW9uczoNCj4+Pg0KPj4+IC0gQXBhY2hlIEFuc3dlciB0aHJvdWdoIDEu
My41DQo+Pj4NCj4+PiBEZXNjcmlwdGlvbjoNCj4+Pg0KPj4+IEluYWRlcXVhdGUgRW5jcnlwdGlv
biBTdHJlbmd0aCB2dWxuZXJhYmlsaXR5IGluIEFwYWNoZSBBbnN3ZXIuDQo+Pj4NCj4+PiBUaGlz
IGlzc3VlIGFmZmVjdHMgQXBhY2hlIEFuc3dlcjogdGhyb3VnaCAxLjMuNS4NCj4+Pg0KPj4+IFVz
aW5nIHRoZSBNRDUgdmFsdWUgb2YgYSB1c2VyJ3MgZW1haWwgdG8gYWNjZXNzIEdyYXZhdGFyIGlz
IGluc2VjdXJlIGFuZCBjYW4gbGVhZCB0byB0aGUgbGVha2FnZSBvZiB1c2VyIGVtYWlsLiBUaGUg
b2ZmaWNpYWwgcmVjb21tZW5kYXRpb24gaXMgdG8gdXNlIFNIQTI1NiBpbnN0ZWFkLg0KPj4+IFVz
ZXJzIGFyZSByZWNvbW1lbmRlZCB0byB1cGdyYWRlIHRvIHZlcnNpb24gMS40LjAsIHdoaWNoIGZp
eGVzIHRoZSBpc3N1ZS4NCj4+Pg0KPj4+IENyZWRpdDoNCj4+Pg0KPj4+IOW8oOWys+eGmSAocmVw
b3J0ZXIpDQo+Pj4NCj4+PiBSZWZlcmVuY2VzOg0KPj4+DQo+Pj4gaHR0cHM6Ly9hbnN3ZXIuaW5j
dWJhdG9yLmFwYWNoZS5vcmcNCj4+PiBodHRwczovL3d3dy5jdmUub3JnL0NWRVJlY29yZD9pZD1D
VkUtMjAyNC00MDc2MQ0KPj4gV2hhdCBpcyB0aGUgc3BlY2lmaWMgcHJvcGVydHkgb2YgU0hBMjU2
IHJlcXVpcmVkIGhlcmU/ICBFbWFpbCBhZGRyZXNzZXMNCj4+IGhhdmUgbG93IGVudHJvcHkgYW5k
IEkgc3VzcGVjdCB0aGV5IGNhbiBiZSBlYXNpbHkgYnJ1dGUtZm9yY2VkLCBzbw0KPj4gbGVha2lu
ZyB0aGUgU0hBMjU2IGhhcyBpcyBzdGlsbCBiYWQuICBJbnN0ZWFkLCBJIHdvdWxkIHVzZSBhIHNl
ZWRlZCBQUkYNCj4+IHdpdGggYSBzZWVkIG9ubHkga25vd24gdG8gdGhlIHNlcnZlciwgZW5zdXJp
bmcgdGhhdCB0aGUgcmVzdWx0aW5nIHZhbHVlDQo+PiBkb2VzIG5vdCBsZWFrIGFueSBpbmZvcm1h
dGlvbiBhYm91dCB0aGUgZW1haWwuDQo+PiAtLQ0KPj4gU2luY2VyZWx5LA0KPj4gRGVtaSBNYXJp
ZSBPYmVub3VyIChzaGUvaGVyL2hlcnMpDQo+PiBJbnZpc2libGUgVGhpbmdzIExhYg0KPiBJIGRv
bid0IHRoaW5rIHRoYXQgYSBzZWVkZWQgUFJGICh3aXRoIGEgcGVyLXNlcnZlciBzZWVkKSB3b3Vs
ZCBtZWV0DQo+IHRoZSByZXF1aXJlbWVudHMgaGVyZS4gVGhlIHByb2JsZW0gaXMgdGhhdCBHcmF2
YXRhciB3b3VsZCBoYXZlIG5vIHdheQ0KPiBvZiB1bmRlcnN0YW5kaW5nIHdoaWNoIGVtYWlsIGlz
IGluIHF1ZXN0aW9uLiBJbmRlZWQsIHRoYXQgd291bGQNCj4gcmVxdWlyZSBzdG9yaW5nIGFsbCBl
bWFpbHMgaGFzaGVkIHdpdGggYWxsIHJlZ2lzdGVyZWQgc2VydmVyIHNlZWRzLg0KPg0KPiBXaGF0
IHdvdWxkIHdvcmsgaXMgYW4gZW1haWwgaGFzaCBlbmNyeXB0ZWQgc3ltbWV0cmljYWxseSB3aXRo
IGENCj4gcGVyLXNlcnZlciBrZXkuIFRoZW4gR3JhdmF0YXIgKHdobyBhbHNvIGtub3dzIHRoaXMg
a2V5KSB3b3VsZCBkZWNyeXB0DQo+IHRoZSBlbWFpbCBoYXNoIGFuZCBsb29rIHVwIHRoZSBhdmF0
YXIgaW1hZ2UuDQo+DQo+IE5vdGUgdGhhdCBhbGwgb2YgdGhlIGFib3ZlIHRhbGtzIGFib3V0IGEg
aHlwb3RoZXRpY2FsIGltcHJvdmVkIHZlcnNpb24NCj4gb2YgR3JhdmF0YXIsIG5vdCB3aGF0IHdl
IGhhdmUgcmlnaHQgbm93Lg0KPg0K

--------------lCS46s8lKp5ngOrR0DqdWYza
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">I don't think that a seeded =
PRF (with a per-server seed) would meet
the requirements here.</pre>
      </blockquote>
      I think you are right. When I wrote my response yesterday I wasn't
      fully aware how Gravatar is supposed to be used. I always thought
      of Gravatar as a service to generate unique avatar images.</p>
    <p>Now, this leaves me with a few observations:</p>
    <ol>
      <li>The 'should be taken' from Gravatar's documentation should be
        'must be taken' to ensure consistent user hashes (therefore
        using MD5 in the first place rendered Gravatar useless if
        Gravatar doesn't match against MD5 hashes as well).</li>
      <li>The information leakage with Gravatar is in-spec. Fixing the
        information leakage would be possible but requires changes on
        Gravatar's side by implementing a symmetric cipher instead of a
        hash (as suggested; a hash wouldn't be tractable any more
        because Gravatar would need to hash every user's email address
        with every registered seed when using seeded PRF). Prior hashing
        wouldn't even be required given that both sides - Gravatar and
        the site itself - have access to the user's email address
        anyway.<br>
      </li>
      <li>It may be advisable to not use Gravatar as the default (not
        sure if this is the case here). Instead, let user's choose it
        and let them know about the potential information leakage.</li>
      <li>The fix does not fix what it tries to fix.</li>
      <li>Assigning a CVE for an in-spec information leakage seems not
        useful to me. Otherwise, every single product using Gravatar
        would be affected by this.</li>
    </ol>
    <pre class=3D"moz-signature" cols=3D"72">M. Sc. Fabian B=C3=A4umer

Chair for Network and Data Security
Ruhr University Bochum
Universit=C3=A4tsstr. 150, Building MC 4/145
44780 Bochum
Germany</pre>
    <div class=3D"moz-cite-prefix">Am 27.09.2024 um 14:25 schrieb
      Alexander Patrakov:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAN_LGv2QzuonfGdOsN88Qpe479xupfceCLYkv0yQFtRdf3CFNQ@mail.gmail.=
com">
      <pre wrap=3D"" class=3D"moz-quote-pre">On Thu, Sep 26, 2024 at 5:19=
=E2=80=AFAM Demi Marie Obenour
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:demi@invisiblethingslab.c=
om">&lt;demi@invisiblethingslab.com&gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">
On Wed, Sep 25, 2024 at 06:28:16AM +0000, Enxin Xie wrote:
</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"" class=3D"moz-quote-pre">Severity: low

Affected versions:

- Apache Answer through 1.3.5

Description:

Inadequate Encryption Strength vulnerability in Apache Answer.

This issue affects Apache Answer: through 1.3.5.

Using the MD5 value of a user's email to access Gravatar is insecure and ca=
n lead to the leakage of user email. The official recommendation is to use =
SHA256 instead.
Users are recommended to upgrade to version 1.4.0, which fixes the issue.

Credit:

=E5=BC=A0=E5=B2=B3=E7=86=99 (reporter)

References:

<a class=3D"moz-txt-link-freetext" href=3D"https://answer.incubator.apache.=
org">https://answer.incubator.apache.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.cve.org/CVERecord?id=
=3DCVE-2024-40761">https://www.cve.org/CVERecord?id=3DCVE-2024-40761</a>
</pre>
        </blockquote>
        <pre wrap=3D"" class=3D"moz-quote-pre">
What is the specific property of SHA256 required here?  Email addresses
have low entropy and I suspect they can be easily brute-forced, so
leaking the SHA256 has is still bad.  Instead, I would use a seeded PRF
with a seed only known to the server, ensuring that the resulting value
does not leak any information about the email.
--
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">
I don't think that a seeded PRF (with a per-server seed) would meet
the requirements here. The problem is that Gravatar would have no way
of understanding which email is in question. Indeed, that would
require storing all emails hashed with all registered server seeds.

What would work is an email hash encrypted symmetrically with a
per-server key. Then Gravatar (who also knows this key) would decrypt
the email hash and look up the avatar image.

Note that all of the above talks about a hypothetical improved version
of Gravatar, not what we have right now.

</pre>
    </blockquote>
  </body>
</html>

--------------lCS46s8lKp5ngOrR0DqdWYza--

--------------ms040100090709060405060707
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
AQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjQwOTI3MTI0OTAwWjBPBgkqhkiG9w0B
CQQxQgRArCTiUi+Fay9oiZ45eUzZQvuY0bPq7CjHGeZO/Vd4ah6wU1+ruxeqz9SJqufkh1vut8f4
odY+3Jajb2YOXP3O9DCBrwYJKwYBBAGCNxAEMYGhMIGeMIGNMQswCQYDVQQGEwJERTFFMEMGA1UE
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
BAEOADAIBgYrgQQBDgEwCAYGK4EEAQ4CMAgGBiuBBAEOAzANBgkqhkiG9w0BAQEFAASCAgAfOf2c
4wUSmx1EZWvJA7xfcZTov4VDx0lFnO9K9VCLhDO/TpwywSKBffeHu/kdugRevxyECnUoQnb9rCij
TgWfANeIhvVrYZRf2D6PDbkEj1ce95u2mDLVTluhvVsdqhrQQJbVVFGZwOwNYrC4WVSFBXj1L+Tq
9xL9h4wjtlNHW+ejXZtK34C03ROg9e8g7MjjNcQh6epqNT1HOjvXQIpxdKVlUBovALzlmTq4R2LH
v81Y3MoeL8j9xpi1TuACook68A7DfOIIs/8wr6nGVo5xmFgBAvBIoFGto01vRF9yDnmnBvQla9Jz
+zJfClSMw6oZ1Y4Ophhg0SZp5NZKv5V/F3cvBy2DVF+KzAl7tHjZZLBdoHPT0UQqFX0eEAWeqb2f
aJmmvoLVtswd+67talpqIq+i7tO+LBb4b3b8n/D5t89MfDvN6u63L2X69PZAGmxJhPwRKI0xN1BB
rBOGpKYnIqUUyneJzaSVnqPs/ls8uQ+EIqZ7WoZDnfpPNNRyCJiXGFJ0e0l+FVsfr68lBTD2DCsc
G4VMG/A/I7FelOYzRg8/zqRym+WKiEpUTTQkvSO9XHB2hdbN8Z+Z/05tH3OE0wkLMQzBFrt/Pf9b
xhbiT8viNv4/9JnwA/NCyD4Oa8h/Qb+cQpNINGF3nmAKkxPs8bNBGzZcaOPXjDEPt9ejDwAAAAAA
AA==

--------------ms040100090709060405060707--
