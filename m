X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3199" "Tuesday" "12" "May" "2015" "15:51:57" "+0900" "Mamoru TASAKA" "mtasaka@fedoraproject.org" "<0.161190001431413517.A2GfElQg.mtasaka@fedoraproject.org>" "89" "[oss-security] CVE request for proxychains-ng : current path as the first directory for the library search path" nil nil nil "5" "2015051206:51:57" "[oss-security] CVE request for proxychains-ng : current path as the first directory for the library search path" (number mark "        mtasaka@fedo May 12   89/3199  " thread-indent "\"[oss-security] CVE request for proxychains-ng : current path as the first directory for the library search path\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27777 invoked by uid 550); 12 May 2015 11:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13550 invoked from network); 12 May 2015 06:52:10 -0000
MIME-Version: 1.0
X-Mailer: WebMailSystem
X-Priority: 3
Message-ID: <0.161190001431413517.A2GfElQg.mtasaka@fedoraproject.org>
Content-Type: multipart/mixed;
	boundary="=_d08dc8a988b3ff501492ccfeb81d48f8"
Cc: "mtasaka@fedoraproject.org kseifried@redhat.com secalert@redhat.com"<mtasaka@fedoraproject.org.kseifried@redhat.com.secalert@redhat.com>
Date: Tue, 12 May 2015 15:51:57 +0900
From: Mamoru TASAKA<mtasaka@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for proxychains-ng : current path as the first directory for
 the library search path
To: "oss-security@lists.openwall.com"<oss-security@lists.openwall.com>

--=_d08dc8a988b3ff501492ccfeb81d48f8
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="ISO-2022-JP"

Dear All:

Here I submit a CVE request for proxychains-ng as it is requested as
below.

Sincerely yours,
Mamoru TASAKA <mtasaka@fedoraproject.org>


------- Forwarded Message
Date :Mon, 11 May 2015 23:49:57 -0600
>From :kseifried@redhat.com
Subject :Re: bug 1147013 : current path as the first directory for the library search path

----
On 05/11/2015 11:27 PM, Mamoru TASAKA wrote:
> Dear security responsible team:
> 
> Please correct me if it is not suitable to contact you for the below case.
> I am currently reviewing new package's "Review Request" for
> proxychains-ng as
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1147013
> 
> Source available as
> https://github.com/rofl0r/proxychains-ng
> 
> Rebuilt proxychains-ng binary.rpm contains proxychains4,
> which firstly sets LD_PRELOAD to dlopen libproxychains4.so
> (contained in the same binary rpm) and execvp() the arbitrary
> command user has specified.
> 
> Looking at the code, this program (proxychains4) sets the current
> directory as the first path to search libproxychains4.so. ref:
> 
> https://github.com/rofl0r/proxychains-ng/blob/master/src/main.c#L35
> 
> I would appreciate it if you would answer to me if this
> is permitted from the viewpoint of security.
> 
> Sincerely yours,
> Mamoru TASAKA 

This is def a security flaw, similar to CVE-2009-0415 for example. Can
you please post a copy of this to oss-security@lists.openwall.com
requesting a CVE # for this vulnerability? Also please use
secalert@redhat.com in future, it has a response SLA, this email address
does not. Thanks!


-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--=_d08dc8a988b3ff501492ccfeb81d48f8
Content-Transfer-Encoding: base64
Content-Type:  application/pgp-signature;
 name="signature.asc"; 
Content-Disposition: attachment;
 filename="signature.asc"; 

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0NClZlcnNpb246IEdudVBH
IHYyLjAuMjIgKEdOVS9MaW51eCkNCg0KaVFJY0JBRUJBZ0FHQlFKVlVaU0ZB
QW9KRUJZTlJWTmVKbm1UMnZVUC9qSUVTSTl6QWwwaGhqMDlVTTBWLzJnVQ0K
YkpHOVNzR1oweUEzREVsUDlBQkpvZFNGOVBITDdqTFpXRWZpNkQxRWRjVDds
bHU0TUgzdXNJbG91cFZ4R0gyZg0KZCtobVRmekdMU2hzSmIzeGdRc3pVOTln
L21rbmYyRzhUWFlNazE4dkpJdkdyTmtsNzM4N3JvTVYvQU9mTGtFeA0KYVBX
SHIyamY1dnNEWEN0OTRnUlNUTkNFN0JTNk1Uc3hienMxY1NnOGcwblZKSkZD
QWR0THJCdEJpMmUvcng3WQ0KeDgwSmlFa1JDa1h2V0IxV3NmTXBCeDRTZHlW
Y05CWUtWUTErbDVpZEQ0dlJQWkMvN0s5TlRlMEQ2aUhPUFgrVg0KeW9Id3lw
M0NNS0FzdmU4NUtFSEJ1Mit6T2JFOThmSmFCODRrdlp1Y3R2bTRTVVJRQzFo
KzQzOFhYYVlTVUFqbQ0KWTl1dVhmZUQ4dHhsUm0yQ2ZraVRDdFczcFcxL1Jy
Qks1QklIV2wwOFViNG1QTE55QkdRNFIrSWdzeTA0RFdkLw0KSVg2Z0dBMlAr
UE9iK2VQUGdVZmNZQVVXckp6NWpTU3dTUEttMEhxS0JDNjFWMWxhSWFBaVMy
NUNFVXR4VjRYdw0KcHlPblphdFpndWZVMDJ1dlhmbzRQMzFrU2h2TWEwSFJo
TWZKWWd4c3kzWFNNVzYycjVDa24yWU9aeDkvSGVXdg0KUlhKWTJjdGdPUU91
Z0d0czVtL3I0L2wzVHptWmVPc3FPN3JRYlp2Y282cDlWQmh0ZkdkL2lFTmtL
R0JBcmJNbg0KdGEvVmN6STZ6eVRmNW83ZDJlL0ttdGJkWVhOTm0vYUVVbGRy
UHdMVUg1RUtaK0hxTWJ4NHhrRC9rUjlBbmVjSQ0KRklyWElnWUlyK0JoU3JB
bC9Zdy8NCj1wMjhBDQotLS0tLUVORCBQR1AgU0lHTkFUVVJFLS0tLS0NCg0K

--=_d08dc8a988b3ff501492ccfeb81d48f8--


