X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11442" "Tuesday" "6" "December" "2016" "17:02:56" "+0000" "Fiedler Roman" "Roman.Fiedler@ait.ac.at" "<2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>" "219" "[oss-security] Opensource Python whitebox code analysis tool recommendations" nil nil nil "12" "2016120617:02:56" "[oss-security] Opensource Python whitebox code analysis tool recommendations" (number mark "U       Roman.Fiedle Dec  6  219/11442 " thread-indent "\"[oss-security] Opensource Python whitebox code analysis tool recommendations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12021 invoked by uid 550); 6 Dec 2016 17:08:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9502 invoked from network); 6 Dec 2016 17:03:09 -0000
From: Fiedler Roman <Roman.Fiedler@ait.ac.at>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Opensource Python whitebox code analysis tool recommendations
Thread-Index: AdJP3zeB8UTUlKiNSKyS//awZKouqA==
Date: Tue, 6 Dec 2016 17:02:56 +0000
Message-ID: <2ECE9D9EEF1F524185270138AE232659550547C3@S0MSMAIL112.arc.local>
Accept-Language: en-US, de-AT
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.249.121]
Content-Type: multipart/signed; micalg=2.16.840.1.101.3.4.2.3;
	protocol="application/x-pkcs7-signature";
	boundary="----=_NextPart_000_0041_01D24FEA.F7F58510"
MIME-Version: 1.0
Subject: [oss-security] Opensource Python whitebox code analysis tool recommendations

------=_NextPart_000_0041_01D24FEA.F7F58510
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: 7bit

Hello list,

I just stubled over effects of following programming error due to unwanted 
singleton in Python, bypassing intended process restrictions (allowed number 
of elements in my case) and of course data corruption:

class A:
  def __init__(self, value=[]):
    self.value=value
    self.valueCloned=value[:]
  def show(self):
    print 'IDs value %x, cloned %x' % (id(self.value), id(self.valueCloned))
  def append(self, data):
    self.value.append(data)

# Keep reference to avoid garbage collection interference.
objFirst=A()
objFirst.show()
objNext=A()
objNext.show()
# Check references to prohibit optimization.
if objFirst==objNext: raise Exception('Impossible')



As this type of error seems to be more common in code, at least according to 
grep, are there tool recommendations to do automatic analysis of code?

It should trace all non-trivial (not None, int, float, str, ...) constructor 
arguments assignments and catch at least problematic invocations like 
"self.value.append". A problem is, that in many cases just existence of 
constructor like the one before does not automatically lead to 
corruption/concurrency issues. For example the tool should not trigger on this 
(older but still in use) version of django_common/http.py or at least, when 
triggering, only at "json.dumps()".

class JsonResponse(HttpResponse):
  def __init__(self, data={ }, errors=[ ], success=True):
    """
    data is a map, errors a list
    """
    json = json_response(data=data, errors=errors, success=success)
    super(JsonResponse, self).__init__(json, content_type='application/json')

def json_response(data={ }, errors=[ ], success=True):
  data.update({
    'errors': errors,
    'success': len(errors) == 0 and success,
  })
  return json.dumps(data)

Due to weak typing, it might be too hard to catch all problematic locations, 
e.g. field modified in subclass. Without source code analysis tools available 
to do such checks, I would also try out any approaches where the argument 
value is made immutable thus leading to crash in testbed.

It would be great, if the tool would do the whole analysis more from the 
security than code quality perspective: it is more interesting to audit own 
code and referenced/redistributed third party stuff for things that "are very 
likely to be problematic/vulnerable" than have a quality tool recommending to 
change all those lines, which is not quite realistic.

Kind regards,
Roman

------=_NextPart_000_0041_01D24FEA.F7F58510
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG
9w0BBwEAAKCCFDEwggQ2MIIDHqADAgECAgEBMA0GCSqGSIb3DQEBBQUAMG8x
CzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRUcnVzdCBBQjEmMCQGA1UECxMd
QWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsxIjAgBgNVBAMTGUFkZFRy
dXN0IEV4dGVybmFsIENBIFJvb3QwHhcNMDAwNTMwMTA0ODM4WhcNMjAwNTMw
MTA0ODM4WjBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIx
JjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYD
VQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290MIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAt/caM+byAAQtOeBOW+0fvGwPzbX6I7bO3psR
M5ekKUx9k5+9SryT7QMa44/P5W1QWtaXKZRagLBJetsulf24yr83OC0ePpFB
rXBWx/BPP+gynnTKyJBU6cZfD3idmkA8Dqxhql4Uj56HoWpQ3NeaTq8Fs6Zx
lJxxs1BgCscTnTgHhgKo6ahpJhiQq0ywTyOrOk+E2N/On+Fpb7vXQtdrROTH
re5tQV9yWnEIN7N5ZaRZoJQ39wAvDcKSctrQOHLbFKhFxF0qfbe01sTurM0T
RLfJK91DACX6YblpalgjEbenM49WdVn1zSnXRrcKK2W200JvFbK4e/vv6V1T
1TRaJwIDAQABo4HcMIHZMB0GA1UdDgQWBBStvZh6NLQm9/rEJlTvA73gJMtU
GjALBgNVHQ8EBAMCAQYwDwYDVR0TAQH/BAUwAwEB/zCBmQYDVR0jBIGRMIGO
gBStvZh6NLQm9/rEJlTvA73gJMtUGqFzpHEwbzELMAkGA1UEBhMCU0UxFDAS
BgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5h
bCBUVFAgTmV0d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0Eg
Um9vdIIBATANBgkqhkiG9w0BAQUFAAOCAQEAsJvghSXC1iPiD5YGkp1BmJzZ
hHmB2R5bFAcjNmWPsNh3u6xBbEdgg1Gw+TI95/z2JhPHgBalv1r8h894eYkh
muJMBwqGNbzy3lHE0pa33H5O7nD9HDnrDAJRFC2OvRbgwd9Gdeckrez0QrSF
k3AQZ7qdBjVKGNMresxRQqF6Y9Hmu6HFK8I2vhMN5r1jfnl7pwkNQKtq3Y+K
w/b2jBpCBVHURfWfp2IhaBUgQzyZ53y9JNipkRdziD9WGzE4GLRxD5rNyA6e
ji4b4YyYg8sfMfFETMYEc0l2YA/H+L0XgGsu6cxMDlqaeQ8gCi7VnmMmHlWS
lNiCF1p70LzHj06GBDCCBJ0wggOFoAMCAQICEDQ96SusJzT/j8s0lPvMcFQw
DQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0UxFDASBgNVBAoTC0FkZFRy
dXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0d29y
azEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0wNTA2
MDcwODA5MTBaFw0yMDA1MzAxMDQ4MzhaMIGuMQswCQYDVQQGEwJVUzELMAkG
A1UECBMCVVQxFzAVBgNVBAcTDlNhbHQgTGFrZSBDaXR5MR4wHAYDVQQKExVU
aGUgVVNFUlRSVVNUIE5ldHdvcmsxITAfBgNVBAsTGGh0dHA6Ly93d3cudXNl
cnRydXN0LmNvbTE2MDQGA1UEAxMtVVROLVVTRVJGaXJzdC1DbGllbnQgQXV0
aGVudGljYXRpb24gYW5kIEVtYWlsMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A
MIIBCgKCAQEAsjmFpPJ9q0E7YkY3rs3BYHW8OWX5ShpHornMSMxqmNVNNRm5
pELlzkniii8efNIxB8dOtINknS4p1aJkxIW9hVE1eaROaJB7HHqkkqgX8pgV
8pPMyaQylbsMTzC9mKALi+VuG6JG+ni8om+rWV6lL8/K2m2qL+usobNqqrcu
ZzWLeeEeaYji5kbNoKXqvgvOdjp6Dpvq/NonWz1zHyLmSGHGTPNpsaguG7bU
MSAsvIKKjqQOpdeJQ/wWWq8dcdcRWdq6hw2v+vPhwvCkxWeM1tZUOt4KpLoD
d7NlyP0e03RiqhjKaJMeoYV+9Udly/hNVyh00jT/MLbu9mIwFIws6wIDAQAB
o4H0MIHxMB8GA1UdIwQYMBaAFK29mHo0tCb3+sQmVO8DveAky1QaMB0GA1Ud
DgQWBBSJgmd9xJ0mcABLtFBIfN49rgRufTAOBgNVHQ8BAf8EBAMCAQYwDwYD
VR0TAQH/BAUwAwEB/zARBgNVHSAECjAIMAYGBFUdIAAwRAYDVR0fBD0wOzA5
oDegNYYzaHR0cDovL2NybC51c2VydHJ1c3QuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDUGCCsGAQUFBwEBBCkwJzAlBggrBgEFBQcwAYYZaHR0
cDovL29jc3AudXNlcnRydXN0LmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAAbyc
42MosPMxAcLfe91ioAGdIzEPnJJzU1HqH0z61p/Eyi9nfngzD3QWuZGHkfWK
JvpkcADYHvkLBGJQh5OB1Nr1I9s0u4VWtHA0bniDNx6FHMURFZJfhxe9rGr9
8cLRzIlfsXzwPlHyNfN87GCYazor4O/fs32G67Ub9VvsonyYE9cAULnRLXPe
A3h04QWFMV7LmrmdlMa5lDd1ctxE+2fo8PolHlKn2iXpR+CgxzygTrEKNvt3
SJ/vl4r7tP7jlBSog7xcLT/SYHFg7sJxggzpiDbj2iC0o6BsqpZLuICOdcpJ
B/Y7FLrf3AXZn9vgsuZNoHgm5+ctbn9fxh6IFTCCBRowggQCoAMCAQICEG0Z
6qcZT2ozIuYiMnqqcd4wDQYJKoZIhvcNAQEFBQAwga4xCzAJBgNVBAYTAlVT
MQswCQYDVQQIEwJVVDEXMBUGA1UEBxMOU2FsdCBMYWtlIENpdHkxHjAcBgNV
BAoTFVRoZSBVU0VSVFJVU1QgTmV0d29yazEhMB8GA1UECxMYaHR0cDovL3d3
dy51c2VydHJ1c3QuY29tMTYwNAYDVQQDEy1VVE4tVVNFUkZpcnN0LUNsaWVu
dCBBdXRoZW50aWNhdGlvbiBhbmQgRW1haWwwHhcNMTEwNDI4MDAwMDAwWhcN
MjAwNTMwMTA0ODM4WjCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0
ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09N
T0RPIENBIExpbWl0ZWQxOTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVu
dGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBAJKEhFtLV5jUXi+LpOFAyKNTWF9mZfEyTvefMn1V
0HhMVbdClOD5J3EHxcZppLkyxPFAGpDMJ1Zifxe1cWmu5SAb5MtjXmDKokH2
auGj/7jfH0htZUOMKi4rYzh337EXrMLaggLW1DJq1GdvIBOPXDX65VSAr9hx
Ch03CgJQU2yVHakQFLSZlVkSMf8JotJM3FLb3uJAAVtIaN3FSrTg7SQfOq9x
XwfjrL8UO7AlcWg99A/WF1hGFYE8aIuLgw9teiFX5jSw2zJ+40rhpVJyZCaR
TqWSD//gsWD9Gm9oUZljjRqLpcxCm5t9ImPTqaD8zp6Q30QZ9FxbNboW86eb
/8ECAwEAAaOCAUswggFHMB8GA1UdIwQYMBaAFImCZ33EnSZwAEu0UEh83j2u
BG59MB0GA1UdDgQWBBR6E04AdFvGeGNkJ8Ev4qBbvHnFezAOBgNVHQ8BAf8E
BAMCAQYwEgYDVR0TAQH/BAgwBgEB/wIBADARBgNVHSAECjAIMAYGBFUdIAAw
WAYDVR0fBFEwTzBNoEugSYZHaHR0cDovL2NybC51c2VydHJ1c3QuY29tL1VU
Ti1VU0VSRmlyc3QtQ2xpZW50QXV0aGVudGljYXRpb25hbmRFbWFpbC5jcmww
dAYIKwYBBQUHAQEEaDBmMD0GCCsGAQUFBzAChjFodHRwOi8vY3J0LnVzZXJ0
cnVzdC5jb20vVVROQWRkVHJ1c3RDbGllbnRfQ0EuY3J0MCUGCCsGAQUFBzAB
hhlodHRwOi8vb2NzcC51c2VydHJ1c3QuY29tMA0GCSqGSIb3DQEBBQUAA4IB
AQCF1r54V1VtM39EUv5C1QaoAQOAivsNsv1Kv/avQUn1G1rF0q0bc24+6SZ8
5kyYwTAo38v7QjyhJT4KddbQPTmGZtGhm7VNm2+vKGwdr+XqdFqo2rHA8XV6
L566k3nK/uKRHlZ0sviN0+BDchvtj/1gOSBH+4uvOmVIPJg9pSW/ve9g4Enl
FsjrP0OD8ODuDcHTzTNfm9C9YGqzO/761Mk6PB/tm/+bSTO+Qik5g+4zaS6C
nUVNqGnagBsePdIaXXxHmaWbCG0SmYbWXVcHG6cwvktJRLiQfsrReTjrtDP6
oDpdJlieYVUYtCHVmdXgQ0BCML7qpeeU0rD+83X5f27nMIIGNDCCBRygAwIB
AgIQYFWbWk5iNCzrhdMlQNo7yzANBgkqhkiG9w0BAQUFADCBkzELMAkGA1UE
BhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMH
U2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxOTA3BgNVBAMT
MENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFp
bCBDQTAeFw0xNDAzMjcwMDAwMDBaFw0xNzAzMjYyMzU5NTlaMIIBQTELMAkG
A1UEBhMCQVQxDTALBgNVBBETBDEyMjAxDTALBgNVBAgTBFdpZW4xDTALBgNV
BAcTBFdpZW4xJTAjBgNVBAkTHERvbmF1LUNpdHktU3RyYXNlIDF0ZWNoL0dh
dGUxMjAwBgNVBAoTKUFJVCBBdXN0cmlhbiBJbnN0aXR1dGUgb2YgVGVjaG5v
bG9neSBHbWJIMUkwRwYDVQQLE0BJc3N1ZWQgdGhyb3VnaCBBSVQgQXVzdHJp
YW4gSW5zdGl0dXRlIG9mIFRlY2hub2xvZ3kgR21iSCBFLVBLSSBNMR8wHQYD
VQQLExZDb3Jwb3JhdGUgU2VjdXJlIEVtYWlsMRYwFAYDVQQDEw1Sb21hbiBG
aWVkbGVyMSYwJAYJKoZIhvcNAQkBFhdyb21hbi5maWVkbGVyQGFpdC5hYy5h
dDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKoQZ4+chQjDFKcy
R27Ek0NAWQaiwCij+PkpcWRrVfmABy1FoRW3lo3JjKfjjUozJRnSJuOU7zPR
qwwPIrrIZtsWJhCXo2oS4StzGTB7sq7Etqrst9m+7LcBVRS1sdjTOMj8BVuU
PDTbZVA8Lk0TdM2NvriBACRqZvk6nVVwLXPdeZyrCxslEQ6AHfJ1lcBVcNxd
TvRV2p6HWi0K2PeCFZF5DKmuX4OvmerzRQTgYJ8PT5cdOHjhqlUZZUI7Rdna
IE/gtRzH2fv5EBlErpBfgdx+m/rIqj6My7fC2oIv1DkbDbUKzG0ldF077Vbk
OvU/x9rXVeWvCXLaPhYaCAraSLkCAwEAAaOCAdEwggHNMB8GA1UdIwQYMBaA
FHoTTgB0W8Z4Y2QnwS/ioFu8ecV7MB0GA1UdDgQWBBTzt/RUBtDyf/0N5AlL
sx+Gp3rlmjAOBgNVHQ8BAf8EBAMCBaAwDAYDVR0TAQH/BAIwADAdBgNVHSUE
FjAUBggrBgEFBQcDBAYIKwYBBQUHAwIwRgYDVR0gBD8wPTA7BgwrBgEEAbIx
AQIBAwUwKzApBggrBgEFBQcCARYdaHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5l
dC9DUFMwVwYDVR0fBFAwTjBMoEqgSIZGaHR0cDovL2NybC5jb21vZG9jYS5j
b20vQ09NT0RPQ2xpZW50QXV0aGVudGljYXRpb25hbmRTZWN1cmVFbWFpbENB
LmNybDCBiAYIKwYBBQUHAQEEfDB6MFIGCCsGAQUFBzAChkZodHRwOi8vY3J0
LmNvbW9kb2NhLmNvbS9DT01PRE9DbGllbnRBdXRoZW50aWNhdGlvbmFuZFNl
Y3VyZUVtYWlsQ0EuY3J0MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21v
ZG9jYS5jb20wIgYDVR0RBBswGYEXcm9tYW4uZmllZGxlckBhaXQuYWMuYXQw
DQYJKoZIhvcNAQEFBQADggEBACTZL2bxELkjL3jl6mri/6Ap3jIhIOdNEtYz
le8o2BvL2D1UsLNdM7q+dtGdLbZbpIJYkTzI8zc87Paj6dC0N1Td5DUDcpI4
hKggTJ1sFGVvKoMXbRIcsjYgvrEwn9h2BvpuRpmiSyNsu7FcGXKoQbZEFv6e
Ulb+OYTeUzOO0DGTnn6nds7k06laGrQtFv3N14UyX0pLDLtxiP+JH8oOwqnG
UCh0nVJSp4ZJExU25NJcIwRRWFSQLHaFvRwaJEWOPF/TfXy7SMfbrp338Da6
ML6CsM74QN1iu2rNzNHiIPNqxfghcSn0Tpa0P+eaeFZu6p8Fl71zCnw1O+wz
EYx7YPMxggRxMIIEbQIBATCBqDCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgT
EkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UE
ChMRQ09NT0RPIENBIExpbWl0ZWQxOTA3BgNVBAMTMENPTU9ETyBDbGllbnQg
QXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIQYFWbWk5iNCzr
hdMlQNo7yzANBglghkgBZQMEAgMFAKCCApkwGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTYxMjA2MTcwMjU0WjBPBgkqhkiG
9w0BCQQxQgRANxZ/xPK+sZVsRZNegghT7EBxBqE8pFkkONU3X2AAqhKcocBp
i0Zdd0SkcOg1iG3eXl7AIkaeZKUpsqd+A0OMcjCBkwYJKoZIhvcNAQkPMYGF
MIGCMAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJ
YIZIAWUDBAECMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDALBglg
hkgBZQMEAgMwCwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATAHBgUrDgMCGjCB
uQYJKwYBBAGCNxAEMYGrMIGoMIGTMQswCQYDVQQGEwJHQjEbMBkGA1UECBMS
R3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQHEwdTYWxmb3JkMRowGAYDVQQK
ExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENsaWVudCBB
dXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhBgVZtaTmI0LOuF
0yVA2jvLMIG7BgsqhkiG9w0BCRACCzGBq6CBqDCBkzELMAkGA1UEBhMCR0Ix
GzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9y
ZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQxOTA3BgNVBAMTMENPTU9E
TyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBDQQIQ
YFWbWk5iNCzrhdMlQNo7yzANBgkqhkiG9w0BAQEFAASCAQA33vXIESVl86Cu
OMsNE2opSv/xr0HohNdm9bo5N33UaVf3DnNvUvViPL8wzh9w2pP55qSAN304
ihLkgAk+JoUurvzelqh6YeBeNRN90rN1aZ3ffhgRQnMLa+7nbwLm5Lbex0dB
47EARtzeRW//C2lEc4iE4wcPhHgUL2OdN83jW5NfCDaMPmN0gqTPEElXP+9+
xy7IG3TUsfiiTgczPPdnVK/rOee/eueXX02arpksvmBeGMPQHXh8O0pCDD4p
WAwRSQL3O7LmUJ6uSwyOgaE37YfSzxBc/H4lZGwgKLEMRFle+qwSvvNDN5jV
JSm25+7dQW4DZvGvfU++4lRI4qUxAAAAAAAA

------=_NextPart_000_0041_01D24FEA.F7F58510--
