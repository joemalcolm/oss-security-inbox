X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17629" "Friday" "27" "October" "2017" "11:21:35" "+0300" "NCSC-FI Vulnerability Co-ordination" "vulncoord@ficora.fi" "<43bc647b-fc56-779c-bf11-99374e557e2a@ficora.fi>" "390" "[oss-security] Two vulnerabilities patched in GNU Wget: CVE-2017-13089, CVE-2017-13090" nil nil nil "10" "2017102708:21:35" "[oss-security] Two vulnerabilities patched in GNU Wget: CVE-2017-13089, CVE-2017-13090" (number mark "U       vulncoord@fi Oct 27  390/17629 " thread-indent "\"[oss-security] Two vulnerabilities patched in GNU Wget: CVE-2017-13089, CVE-2017-13090\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24414 invoked by uid 550); 27 Oct 2017 09:14:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32004 invoked from network); 27 Oct 2017 08:21:47 -0000
Cc: vulncoord@ficora.fi
From: NCSC-FI Vulnerability Co-ordination <vulncoord@ficora.fi>
To: oss-security@lists.openwall.com
Message-ID: <43bc647b-fc56-779c-bf11-99374e557e2a@ficora.fi>
Date: Fri, 27 Oct 2017 11:21:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------815A439C34B7CDAA3CC0DF93"
Content-Language: en-GB
Subject: [oss-security] Two vulnerabilities patched in GNU Wget: CVE-2017-13089,
 CVE-2017-13090

--------------815A439C34B7CDAA3CC0DF93
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

CVE-2017-13089:

The http.c:skip_short_body() function is called in some circumstances,
such as when processing redirects. When the response is sent chunked,
the chunk parser uses strtol() to read each chunk's length, but
doesn't check that the chunk length is a non-negative number. The
code then tries to skip the chunk in pieces of 512 bytes by using the
MIN() macro, but ends up passing the negative chunk length to
connect.c:fd_read(). As fd_read() takes an int argument, the high
32 bits of the chunk length are discarded, leaving fd_read() with
a completely attacker controlled length argument.

Patch attached, original at:

http://git.savannah.gnu.org/cgit/wget.git/commit/?id=d892291fb8ace4c3b73
4ea5125770989c215df3f

CVE-2017-13090:

The retr.c:fd_read_body() function is called when processing OK
responses. When the response is sent chunked, the chunk parser uses
strtol() to read each chunk's length, but doesn't check that the chunk
length is a non-negative number. The code then tries to read the chunk
in pieces of 8192 bytes by using the MIN() macro, but ends up passing
the negative chunk length to retr.c:fd_read(). As fd_read() takes an
int argument, the high 32 bits of the chunk length are discarded,
leaving fd_read() with a completely attacker controlled length
argument. The attacker can corrupt malloc metadata after the allocated
buffer.

Patch attached, original at:

http://git.savannah.gnu.org/cgit/wget.git/commit/?id=ba6b44f6745b14dce41
4761a8e4b35d31b176bba

Reported by:

Antti Levomäki, Christian Jalio, Joonas Pihlaja from Forcepoint

Advisory:

https://www.viestintavirasto.fi/en/2017/haavoittuvuus-2017-037

Also attached are JSON versions of the vulnerability details (in the
CVE 4.0 schema as formatted by Vulnogram, https://vulnogram.github.io/).

Regards,

- -Jussi / NCSC-FI
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBCgAGBQJZ8uxpAAoJEABVfkgMlGK84+wP/0ADB7REF0a85RU3ScvhuwCB
nyDzyoGy0bEFkN+Hia4sIZzSL6ea+EcngUw28A6tMuQGpgYqqKnrxybp39Pou/IU
c1Bl/7Lci4PQRfc/XuhFE6NlqZlG9W7G4Yiijgv2sQNiaHzkIDxaUuahqQOI7AhQ
WGdtBdFIYdBs9DogZuW+cURZ+3F1paPymQozGDQtdZClTL41+YhKbNki47tBzX+7
GWndw3vt75ZGPsBDWFu1m4RUslmEG1+EU7cWYLTqo8+eTirnC9Lo2VS3fkJimdH1
rJDjRCQ1xCiWNwJ4+wpzh2gm0CPlY5MU/1dr6mdGGRIcwqGcSfmEBMaOHTQGVt9b
q2RDY3Otmh/98/3oeKlhyC2e7gyRO1D9i/SGgsCX2Xnfh6AnLg5I6P0xvSGtj/aK
5V5/7q5+xu7OFEOwvgEAN77eYGYFIND6fBMqJFn8kxvac1uNd7ppixuCqsC0rxWE
t1L73B/vFvuOL9G6tq62o8haT578vQj8HQ8/x39PtHzr2giDv4uC4bKCZx6CCKGl
ZNfpTEucZrQDJq/8rtm047o5DGlOjTn+rflRhh2BdNDw6nnek605Ctney80YqFuF
xYkQYSF9XkWcr/xTX1qD7vsMYhYlOqCui/3ej+S01yOVcRbTUSLVsF3jWm4QJlKa
duMI7yGV2dxh4xjfSOoZ
=fq73
-----END PGP SIGNATURE-----

--------------815A439C34B7CDAA3CC0DF93
Content-Type: application/json;
 name="CVE-2017-13089.json"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="CVE-2017-13089.json"

ewogICAiQ1ZFX2RhdGFfbWV0YSI6IHsKICAgICAgIkFTU0lHTkVSIjogImNl
cnRAY2VydC5vcmciLAogICAgICAiREFURV9QVUJMSUMiOiAiMjAxNy0xMC0y
N1QxNTowMDowMC4wMDBaIiwKICAgICAgIklEIjogIkNWRS0yMDE3LTEzMDg5
IiwKICAgICAgIlNUQVRFIjogIlBVQkxJQyIsCiAgICAgICJUSVRMRSI6ICJH
TlUgV2dldDogc3RhY2sgb3ZlcmZsb3cgaW4gSFRUUCBwcm90b2NvbCBoYW5k
bGluZyIKICAgfSwKICAgImFmZmVjdHMiOiB7CiAgICAgICJ2ZW5kb3IiOiB7
CiAgICAgICAgICJ2ZW5kb3JfZGF0YSI6IFsKICAgICAgICAgICAgewogICAg
ICAgICAgICAgICAicHJvZHVjdCI6IHsKICAgICAgICAgICAgICAgICAgInBy
b2R1Y3RfZGF0YSI6IFsKICAgICAgICAgICAgICAgICAgICAgewogICAgICAg
ICAgICAgICAgICAgICAgICAicHJvZHVjdF9uYW1lIjogIldnZXQiLAogICAg
ICAgICAgICAgICAgICAgICAgICAidmVyc2lvbiI6IHsKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgInZlcnNpb25fZGF0YSI6IFsKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAicGxhdGZvcm0iOiAiYW55IiwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgInZlcnNpb25fdmFsdWUiOiAicHJpb3IgdG8gMS4x
OS4yIgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF0KICAgICAgICAgICAgICAgICAgICAgICAg
fQogICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgIF0K
ICAgICAgICAgICAgICAgfSwKICAgICAgICAgICAgICAgInZlbmRvcl9uYW1l
IjogIkdOVSBQcm9qZWN0IgogICAgICAgICAgICB9CiAgICAgICAgIF0KICAg
ICAgfQogICB9LAogICAiY3JlZGl0IjogWwogICAgICAiQW50dGkgTGV2b23D
pGtpLCBDaHJpc3RpYW4gSmFsaW8sIEpvb25hcyBQaWhsYWphIGZyb20gRm9y
Y2Vwb2ludCIKICAgXSwKICAgImRhdGFfZm9ybWF0IjogIk1JVFJFIiwKICAg
ImRhdGFfdHlwZSI6ICJDVkUiLAogICAiZGF0YV92ZXJzaW9uIjogIjQuMCIs
CiAgICJkZXNjcmlwdGlvbiI6IHsKICAgICAgImRlc2NyaXB0aW9uX2RhdGEi
OiBbCiAgICAgICAgIHsKICAgICAgICAgICAgImxhbmciOiAiZW5nIiwKICAg
ICAgICAgICAgInZhbHVlIjogIlRoZSBodHRwLmM6c2tpcF9zaG9ydF9ib2R5
KCkgZnVuY3Rpb24gaXMgY2FsbGVkIGluIHNvbWUgY2lyY3Vtc3RhbmNlcywg
c3VjaCBhcyB3aGVuIHByb2Nlc3NpbmcgcmVkaXJlY3RzLiBXaGVuIHRoZSBy
ZXNwb25zZSBpcyBzZW50IGNodW5rZWQsIHRoZSBjaHVuayBwYXJzZXIgdXNl
cyBzdHJ0b2woKSB0byByZWFkIGVhY2ggY2h1bmsncyBsZW5ndGgsIGJ1dCBk
b2Vzbid0IGNoZWNrIHRoYXQgdGhlIGNodW5rIGxlbmd0aCBpcyBhIG5vbi1u
ZWdhdGl2ZSBudW1iZXIuIFRoZSBjb2RlIHRoZW4gdHJpZXMgdG8gc2tpcCB0
aGUgY2h1bmsgaW4gcGllY2VzIG9mIDUxMiBieXRlcyBieSB1c2luZyB0aGUg
TUlOKCkgbWFjcm8sIGJ1dCBlbmRzIHVwIHBhc3NpbmcgdGhlIG5lZ2F0aXZl
IGNodW5rIGxlbmd0aCB0byBjb25uZWN0LmM6ZmRfcmVhZCgpLiBBcyBmZF9y
ZWFkKCkgdGFrZXMgYW4gaW50IGFyZ3VtZW50LCB0aGUgaGlnaCAzMiBiaXRz
IG9mIHRoZSBjaHVuayBsZW5ndGggYXJlIGRpc2NhcmRlZCwgbGVhdmluZyBm
ZF9yZWFkKCkgd2l0aCBhIGNvbXBsZXRlbHkgYXR0YWNrZXIgY29udHJvbGxl
ZCBsZW5ndGggYXJndW1lbnQuIgogICAgICAgICB9CiAgICAgIF0KICAgfSwK
ICAgImltcGFjdCI6IHsKICAgICAgImN2c3MiOiB7CiAgICAgICAgICJhdHRh
Y2tDb21wbGV4aXR5IjogIkxPVyIsCiAgICAgICAgICJhdHRhY2tWZWN0b3Ii
OiAiTkVUV09SSyIsCiAgICAgICAgICJhdmFpbGFiaWxpdHlJbXBhY3QiOiAi
SElHSCIsCiAgICAgICAgICJiYXNlU2NvcmUiOiA4LjgsCiAgICAgICAgICJi
YXNlU2V2ZXJpdHkiOiAiSElHSCIsCiAgICAgICAgICJjb25maWRlbnRpYWxp
dHlJbXBhY3QiOiAiSElHSCIsCiAgICAgICAgICJpbnRlZ3JpdHlJbXBhY3Qi
OiAiSElHSCIsCiAgICAgICAgICJwcml2aWxlZ2VzUmVxdWlyZWQiOiAiTk9O
RSIsCiAgICAgICAgICJzY29wZSI6ICJVTkNIQU5HRUQiLAogICAgICAgICAi
dXNlckludGVyYWN0aW9uIjogIlJFUVVJUkVEIiwKICAgICAgICAgInZlY3Rv
clN0cmluZyI6ICJDVlNTOjMuMC9BVjpOL0FDOkwvUFI6Ti9VSTpSL1M6VS9D
OkgvSTpIL0E6SCIsCiAgICAgICAgICJ2ZXJzaW9uIjogIjMuMCIKICAgICAg
fQogICB9LAogICAicHJvYmxlbXR5cGUiOiB7CiAgICAgICJwcm9ibGVtdHlw
ZV9kYXRhIjogWwogICAgICAgICB7CiAgICAgICAgICAgICJkZXNjcmlwdGlv
biI6IFsKICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAibGFu
ZyI6ICJlbmciLAogICAgICAgICAgICAgICAgICAidmFsdWUiOiAiQ1dFLTEy
MTogU3RhY2stYmFzZWQgQnVmZmVyIE92ZXJmbG93IgogICAgICAgICAgICAg
ICB9CiAgICAgICAgICAgIF0KICAgICAgICAgfQogICAgICBdCiAgIH0sCiAg
ICJyZWZlcmVuY2VzIjogewogICAgICAicmVmZXJlbmNlX2RhdGEiOiBbCiAg
ICAgICAgIHsKICAgICAgICAgICAgInVybCI6ICJodHRwczovL3d3dy52aWVz
dGludGF2aXJhc3RvLmZpL2VuL2N5YmVyc2VjdXJpdHkvdnVsbmVyYWJpbGl0
aWVzLzIwMTcvaGFhdm9pdHR1dnV1cy0yMDE3LTAzNy5odG1sIgogICAgICAg
ICB9CiAgICAgIF0KICAgfSwKICAgInNvbHV0aW9uIjogIlBhdGNoIHRvIFdn
ZXQgMS4xOS4yIG9yIGVxdWl2YWxlbnQgdmVyc2lvbiBmcm9tIHlvdXIgb3Bl
cmF0aW5nIHN5c3RlbSBkaXN0cmlidXRpb24uIgp9Cg==

--------------815A439C34B7CDAA3CC0DF93
Content-Type: application/json;
 name="CVE-2017-13090.json"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="CVE-2017-13090.json"

ewogICAiQ1ZFX2RhdGFfbWV0YSI6IHsKICAgICAgIkFTU0lHTkVSIjogImNl
cnRAY2VydC5vcmciLAogICAgICAiREFURV9QVUJMSUMiOiAiMjAxNy0xMC0y
N1QxNTowMDowMC4wMDBaIiwKICAgICAgIklEIjogIkNWRS0yMDE3LTEzMDkw
IiwKICAgICAgIlNUQVRFIjogIlBVQkxJQyIsCiAgICAgICJUSVRMRSI6ICJH
TlUgV2dldDogaGVhcCBvdmVyZmxvdyBpbiBIVFRQIHByb3RvY29sIGhhbmRs
aW5nIgogICB9LAogICAiYWZmZWN0cyI6IHsKICAgICAgInZlbmRvciI6IHsK
ICAgICAgICAgInZlbmRvcl9kYXRhIjogWwogICAgICAgICAgICB7CiAgICAg
ICAgICAgICAgICJwcm9kdWN0IjogewogICAgICAgICAgICAgICAgICAicHJv
ZHVjdF9kYXRhIjogWwogICAgICAgICAgICAgICAgICAgICB7CiAgICAgICAg
ICAgICAgICAgICAgICAgICJwcm9kdWN0X25hbWUiOiAiV2dldCIsCiAgICAg
ICAgICAgICAgICAgICAgICAgICJ2ZXJzaW9uIjogewogICAgICAgICAgICAg
ICAgICAgICAgICAgICAidmVyc2lvbl9kYXRhIjogWwogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJwbGF0Zm9ybSI6ICJhbnkiLAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAidmVyc2lvbl92YWx1ZSI6ICJwcmlvciB0byAxLjE5
LjIiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXQogICAgICAgICAgICAgICAgICAgICAgICB9
CiAgICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgXQog
ICAgICAgICAgICAgICB9LAogICAgICAgICAgICAgICAidmVuZG9yX25hbWUi
OiAiR05VIFByb2plY3QiCiAgICAgICAgICAgIH0KICAgICAgICAgXQogICAg
ICB9CiAgIH0sCiAgICJjcmVkaXQiOiBbCiAgICAgICJBbnR0aSBMZXZvbcOk
a2ksIENocmlzdGlhbiBKYWxpbywgSm9vbmFzIFBpaGxhamEgZnJvbSBGb3Jj
ZXBvaW50IgogICBdLAogICAiZGF0YV9mb3JtYXQiOiAiTUlUUkUiLAogICAi
ZGF0YV90eXBlIjogIkNWRSIsCiAgICJkYXRhX3ZlcnNpb24iOiAiNC4wIiwK
ICAgImRlc2NyaXB0aW9uIjogewogICAgICAiZGVzY3JpcHRpb25fZGF0YSI6
IFsKICAgICAgICAgewogICAgICAgICAgICAibGFuZyI6ICJlbmciLAogICAg
ICAgICAgICAidmFsdWUiOiAiVGhlIHJldHIuYzpmZF9yZWFkX2JvZHkoKSBm
dW5jdGlvbiBpcyBjYWxsZWQgd2hlbiBwcm9jZXNzaW5nIE9LIHJlc3BvbnNl
cy4gV2hlbiB0aGUgcmVzcG9uc2UgaXMgc2VudCBjaHVua2VkLCB0aGUgY2h1
bmsgcGFyc2VyIHVzZXMgc3RydG9sKCkgdG8gcmVhZCBlYWNoIGNodW5rJ3Mg
bGVuZ3RoLCBidXQgZG9lc24ndCBjaGVjayB0aGF0IHRoZSBjaHVuayBsZW5n
dGggaXMgYSBub24tbmVnYXRpdmUgbnVtYmVyLiBUaGUgY29kZSB0aGVuIHRy
aWVzIHRvIHJlYWQgdGhlIGNodW5rIGluIHBpZWNlcyBvZiA4MTkyIGJ5dGVz
IGJ5IHVzaW5nIHRoZSBNSU4oKSBtYWNybywgYnV0IGVuZHMgdXAgcGFzc2lu
ZyB0aGUgbmVnYXRpdmUgY2h1bmsgbGVuZ3RoIHRvIHJldHIuYzpmZF9yZWFk
KCkuIEFzIGZkX3JlYWQoKSB0YWtlcyBhbiBpbnQgYXJndW1lbnQsIHRoZSBo
aWdoIDMyIGJpdHMgb2YgdGhlIGNodW5rIGxlbmd0aCBhcmUgZGlzY2FyZGVk
LCBsZWF2aW5nIGZkX3JlYWQoKSB3aXRoIGEgY29tcGxldGVseSBhdHRhY2tl
ciBjb250cm9sbGVkIGxlbmd0aCBhcmd1bWVudC4gVGhlIGF0dGFja2VyIGNh
biBjb3JydXB0IG1hbGxvYyBtZXRhZGF0YSBhZnRlciB0aGUgYWxsb2NhdGVk
IGJ1ZmZlci4iCiAgICAgICAgIH0KICAgICAgXQogICB9LAogICAiaW1wYWN0
IjogewogICAgICAiY3ZzcyI6IHsKICAgICAgICAgImF0dGFja0NvbXBsZXhp
dHkiOiAiTE9XIiwKICAgICAgICAgImF0dGFja1ZlY3RvciI6ICJORVRXT1JL
IiwKICAgICAgICAgImF2YWlsYWJpbGl0eUltcGFjdCI6ICJISUdIIiwKICAg
ICAgICAgImJhc2VTY29yZSI6IDguOCwKICAgICAgICAgImJhc2VTZXZlcml0
eSI6ICJISUdIIiwKICAgICAgICAgImNvbmZpZGVudGlhbGl0eUltcGFjdCI6
ICJISUdIIiwKICAgICAgICAgImludGVncml0eUltcGFjdCI6ICJISUdIIiwK
ICAgICAgICAgInByaXZpbGVnZXNSZXF1aXJlZCI6ICJOT05FIiwKICAgICAg
ICAgInNjb3BlIjogIlVOQ0hBTkdFRCIsCiAgICAgICAgICJ1c2VySW50ZXJh
Y3Rpb24iOiAiUkVRVUlSRUQiLAogICAgICAgICAidmVjdG9yU3RyaW5nIjog
IkNWU1M6My4wL0FWOk4vQUM6TC9QUjpOL1VJOlIvUzpVL0M6SC9JOkgvQTpI
IiwKICAgICAgICAgInZlcnNpb24iOiAiMy4wIgogICAgICB9CiAgIH0sCiAg
ICJwcm9ibGVtdHlwZSI6IHsKICAgICAgInByb2JsZW10eXBlX2RhdGEiOiBb
CiAgICAgICAgIHsKICAgICAgICAgICAgImRlc2NyaXB0aW9uIjogWwogICAg
ICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJsYW5nIjogImVuZyIs
CiAgICAgICAgICAgICAgICAgICJ2YWx1ZSI6ICJDV0UtMTIyOiBIZWFwLWJh
c2VkIEJ1ZmZlciBPdmVyZmxvdyIKICAgICAgICAgICAgICAgfQogICAgICAg
ICAgICBdCiAgICAgICAgIH0KICAgICAgXQogICB9LAogICAicmVmZXJlbmNl
cyI6IHsKICAgICAgInJlZmVyZW5jZV9kYXRhIjogWwogICAgICAgICB7CiAg
ICAgICAgICAgICJ1cmwiOiAiaHR0cHM6Ly93d3cudmllc3RpbnRhdmlyYXN0
by5maS9lbi9jeWJlcnNlY3VyaXR5L3Z1bG5lcmFiaWxpdGllcy8yMDE3L2hh
YXZvaXR0dXZ1dXMtMjAxNy0wMzcuaHRtbCIKICAgICAgICAgfQogICAgICBd
CiAgIH0sCiAgICJzb2x1dGlvbiI6ICJQYXRjaCB0byBXZ2V0IDEuMTkuMiBv
ciBlcXVpdmFsZW50IHZlcnNpb24gZnJvbSB5b3VyIG9wZXJhdGluZyBzeXN0
ZW0gZGlzdHJpYnV0aW9uLiIKfQo=

--------------815A439C34B7CDAA3CC0DF93
Content-Type: text/x-patch;
 name="CVE-2017-13089.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="CVE-2017-13089.patch"

=46rom d892291fb8ace4c3b734ea5125770989c215df3f Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Tim=3D20R=3DC3=3DBChsen?=3D <tim.ruehsen@gmx.de>
Date: Fri, 20 Oct 2017 10:59:38 +0200
Subject: Fix stack overflow in HTTP protocol handling (CVE-2017-13089)
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

* src/http.c (skip_short_body): Return error on negative chunk size

Reported-by: Antti Levom=C3=A4ki, Christian Jalio, Joonas Pihlaja from Forc=
epoint
Reported-by: Juhani Eronen from Finnish National Cyber Security Centre
---
 src/http.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/src/http.c b/src/http.c
index 5536768..dc31823 100644
--- a/src/http.c
+++ b/src/http.c
@@ -973,6 +973,9 @@ skip_short_body (int fd, wgint contlen, bool chunked)
               remaining_chunk_size =3D strtol (line, &endl, 16);
               xfree (line);
=20
+              if (remaining_chunk_size < 0)
+                return false;
+
               if (remaining_chunk_size =3D=3D 0)
                 {
                   line =3D fd_read_line (fd);
--=20
cgit v1.0-41-gc330

--------------815A439C34B7CDAA3CC0DF93
Content-Type: text/x-patch;
 name="CVE-2017-13090.patch"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="CVE-2017-13090.patch"

=46rom ba6b44f6745b14dce414761a8e4b35d31b176bba Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Tim=3D20R=3DC3=3DBChsen?=3D <tim.ruehsen@gmx.de>
Date: Fri, 20 Oct 2017 15:15:47 +0200
Subject: Fix heap overflow in HTTP protocol handling (CVE-2017-13090)
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

* src/retr.c (fd_read_body): Stop processing on negative chunk size

Reported-by: Antti Levom=C3=A4ki, Christian Jalio, Joonas Pihlaja from Forc=
epoint
Reported-by: Juhani Eronen from Finnish National Cyber Security Centre
---
 src/retr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/src/retr.c b/src/retr.c
index c1bc600..6555ed4 100644
--- a/src/retr.c
+++ b/src/retr.c
@@ -378,6 +378,12 @@ fd_read_body (const char *downloaded_filename, int fd,=
 FILE *out, wgint toread,
               remaining_chunk_size =3D strtol (line, &endl, 16);
               xfree (line);
=20
+              if (remaining_chunk_size < 0)
+                {
+                  ret =3D -1;
+                  break;
+                }
+
               if (remaining_chunk_size =3D=3D 0)
                 {
                   ret =3D 0;
--=20
cgit v1.0-41-gc330

--------------815A439C34B7CDAA3CC0DF93
Content-Type: application/pgp-signature;
 name="CVE-2017-13089.json.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="CVE-2017-13089.json.sig"

iQIcBAABCgAGBQJZ8uxpAAoJEABVfkgMlGK8pHMQAJoGAORs2XeADelpu/5q
HpS3MzsUiE+JK9Wk/sghG0MvtDMlJ1o9XcI11hunHt9gE03WZWd//i4zWn47
Hln64VVbptSQ25LsTjXhPL54civP7rQdr+Dn6PWnUq+Sy0DgmMs2VHF5OVE9
3SHPg9PzYgo7T2qYvMk8wMmcMaFPuTBUmCFf8pUsidcBDjeSzAQuc0pDahSI
oR2hXU28UkBOfKAffgcweT68pNw/tbJ59bG7e5BbwjYVQF8elzLGD0ojBoLT
aGsCUK5kqwkYA9EnDNrF0FSXzAh6/rqbKthYa+G7dNrEtMxpRiMme41W4POj
njcCOZ7IOJKCmxR87t7XnTMJVrRrsUBVLqq0ZV2kIkY/ZEI1aHJIxy6mi9SC
odLH2d55QzUqOF821UEb3RaRL3NqQDCIhfF8knzUTBZ/qcgE62oXlrKwkUCo
Zu9sNHAthu2yqrsf/cmD77moI3xa2sJRGoTxYRCwKLXf2/NZmZFpn4gsrC70
Yka8iIXFNfD5eC7iAMCU1keWN7pFbuf5UExuh7eQyVAbWjORtdSGZ+t/1mc2
DuiKE4Ny2i80h/1FObWmgTFGk/hdvHXEUzqcZ5+lWd09gGlQqtG2IFibE9rD
FQlgeHN1pSKA7r0Vz3Q7QRTe5WetOp/h8QobqPvcFDx8S5Hr3mzeypsTSRKn
TGm1

--------------815A439C34B7CDAA3CC0DF93
Content-Type: application/pgp-signature;
 name="CVE-2017-13090.json.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="CVE-2017-13090.json.sig"

iQIcBAABCgAGBQJZ8uxpAAoJEABVfkgMlGK8wSIP/j7iB0z/DxmO9uektUdb
xJrXPkkttDQWZeVZ8j05XdpOEBVlBOyonsISFGoAkZpfo9xKFaLc5M18+1aN
BfgURgoqHrwlzWvkTTtMPiay2gcNPS/EbiRXxkRN1WMu/5AxX+X4mablEog4
O848r1r7v3nPG5ZCn2CFtW1Pnd1JdjKqjEvz9WiNHTu38sMzL15nYi6nIScq
9U/ra4UYUvaoDdEYl6vA6zjnk1g8o8jWNCujw2RTYjxUHP3fF7QjexXEQDHF
qspyrHVls2DbP/DVvVPDYrUuIcpbeZeQGM5fwPT2vijT8PTgSoZq72JIZ2Qp
7uNwi4X+aSDPEFU78Cu3YcM7VF6bbl+kqf78fahl+XGkz2KAPmurlKR5yJ+K
ktNdPYHlBu0fs9zm4ow8E1LIuHdGvVwJJiPS/EIDU6WkY/gYl7JxddFTsL51
8dnpD4sd2GCRWoxyYENn6fBk+92FP/325PuieNN3K3VwKF2YEjEsoR+3NLn0
fk34VTRd08PJ/MyOahpDET3GGENnzD4OiCyYUdqGdnVRl2v/ZIShxMEnP3TJ
Yk02m0/MJfImaCseOUAQCR/qjp3+59laURi7BaTW4NM9hkyJJzSRPkW7oodI
kalQ4BmXT35Dhu027hZqzOFtE6DSA5RxlioPvtmgAr76/r+mYZyMzDW1XAiO
jsB7

--------------815A439C34B7CDAA3CC0DF93
Content-Type: application/pgp-signature;
 name="CVE-2017-13089.patch.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="CVE-2017-13089.patch.sig"

iQIcBAABCgAGBQJZ8uxpAAoJEABVfkgMlGK8l10QAIPTCAlA2NWx7CKhhbDW
rB0rBVmbGsdyPxRCEGui4vprQVNFtSh91hWHa+rBCu+UbmOjy8hNOlX3mlaY
U72gQrb6eg7k0TZ6pPBxMwWaZfVeDG72L9j3yCpExKoa53q/5WbbRpI/qZwX
8N53Re8POlCpwouYtZ98qmWSFQLgGp5pp7sV8sD5skaEl0M839lyUvFHbjIg
XjTYOopbuVyg2ZUFABGFG365w1srZRAteDxOvEXwejMUwlCFNdfGduqYQxjC
73sKtlnLxEYgzlPR2clYeB1evExoMaK/StDoWWvFC6KNOtwQ3T3pKQ4m0MPv
cymcVRf2diSRqqybFYDdWYfvPw1KWlBi9C2zohS9MvUjNJVJyFk5PXwKLTQb
dA9i3c1Q/fZiw1bg12iGLd13AMdcqPUIwHEewcqh4K4VJuncqvIRR9gMrFZB
JtKpUYilknMGKNPGrWt34tC60dLSwlnHtlpP6dgvkrl5jXyVK2K4OiebmJ0E
MyMyEKT5sR5KvJAqcPAjsZwu4fdPTvZ0HKUoTmC2tftsYqPpzsD2+ISCpyn2
jP68L+R03tOfVAv9qUDxQGrJfxwLObfd5YqAUXxZU6IyGM0mpOR+CFcOJvI4
uKcY0cWvctwdxuSbKFbPQJpiYRTpJoIDRq1O2LeHev/LMMI3Ba/LoHa/fq3x
LzzK

--------------815A439C34B7CDAA3CC0DF93
Content-Type: application/pgp-signature;
 name="CVE-2017-13090.patch.sig"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="CVE-2017-13090.patch.sig"

iQIcBAABCgAGBQJZ8uxqAAoJEABVfkgMlGK8mSQP/3df5iVckFsBbX1ZJ4JG
NS8FYZWkx9oPjTWRiusR1BoIiAI/0JfMRNRtvjmv/MFpfXKMfAlEw1S7EFWh
Sjgge3d/R6HFrHVeZC8ax6O8G9/kDDNBu2PXyY0LNpDd3JGDfiiDNRVJ5g4E
1oH9Tz+8dQD2TlkzwJ9Guxt6WkMUuYIVjohuiRrU2WAUMfXE+jS8MIDyLFUi
01Wt5ctLDrKokWVyoM8nWD7bNkdBEnxSSMmrbDNUDIcm51+NFRI78Tx/k4P9
NFgSAg+9sszK4CCjVNsie+aN3E77qQZvkH/MQ8D9DfiZLx4EHUIpmntUoMum
5o9RbtiCdxf077BOK+BXlLTyinKRPmAQ5cbmJBVCRJnSvwSrglfdZhxNfucs
FpzACe3NQxg7Srez4VTD1lXfaW/R7DL+Lhu0XVMh9XbR9FLXXSH761ObR9X/
AodYumiCK1KwAMs2ywSaDT52exaa0gWZvlUu+CpknDZYzUtM5pr7dueCLOd0
5gYJKXnm67ZKR9hb1i6lpvnkYVMQaUY4A/F39sCqmZCMQ5zAwGgB0KmO8fa4
h4SDGAnmnkgAWOD/4P99JjtW2HYXCutGh+QdMsG2WO3FD8yiTWuB/NuJfLuf
yslZWmWDpzWV0zGP2Fz6A7ovSafgWNxzUizpg9mhoYdcZJxqtigjjmqOwWrd
OZOJ

--------------815A439C34B7CDAA3CC0DF93--
