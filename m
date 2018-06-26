X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1372" "Tuesday" "26" "June" "2018" "14:06:17" "+0200" "Martin Scott Nicklous" "Scott.Nicklous@de.ibm.com" "<OF86D0194F.A1B3DF32-ONC12582B8.003C8D37-C12582B8.00427E73@notes.na.collabserv.com>" "47" "[oss-security] [ CVE-2018-1306 ] Apache Portals Pluto information disclosure vulnerability" nil nil nil "6" "2018062612:06:17" "[oss-security] [ CVE-2018-1306 ] Apache Portals Pluto information disclosure vulnerability" (number mark "U       Scott.Nicklo Jun 26   47/1372  " thread-indent "\"[oss-security] [ CVE-2018-1306 ] Apache Portals Pluto information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28510 invoked by uid 550); 26 Jun 2018 12:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24531 invoked from network); 26 Jun 2018 12:06:37 -0000
MIME-Version: 1.0
To: oss-security@lists.openwall.com,
        "Apache Security Team"
 <security@apache.org>,
        "Portals PMC"
 <private@portals.apache.org>,
        pluto-dev@portals.apache.org, pluto-user@portals.apache.org,
        Jackson
 <kuojackson17@gmail.com>
From: "Martin Scott Nicklous" <Scott.Nicklous@de.ibm.com>
Date: Tue, 26 Jun 2018 14:06:17 +0200
X-KeepSent: 86D0194F:A1B3DF32-C12582B8:003C8D37;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP7 August 18, 2016
X-LLNOutbound: False
X-Disclaimed: 47511
X-TNEFEvaluated: 1
x-cbid: 18062612-9951-0000-0000-0000085F380E
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.423878; ST=0; TS=0; UL=0; ISC=; MB=0.000060
X-IBM-SpamModules-Versions: BY=3.00009258; HX=3.00000241; KW=3.00000007;
 PH=3.00000004; SC=3.00000266; SDB=6.01052567; UDB=6.00539608; IPR=6.00830492;
 BA=6.00006021; NDR=6.00000001; ZLA=6.00000005; ZF=6.00000009; ZB=6.00000000;
 ZP=6.00000000; ZH=6.00000000; ZU=6.00000002; MB=3.00021860; XFM=3.00000015;
 UTC=2018-06-26 12:06:22
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2018-06-26 08:18:07 - 6.00008623
x-cbparentid: 18062612-9952-0000-0000-00006FEC3CD7
Message-Id: <OF86D0194F.A1B3DF32-ONC12582B8.003C8D37-C12582B8.00427E73@notes.na.collabserv.com>
Content-type: multipart/alternative; 	boundary="0__=4EBB082BDFAF0BA78f9e8a93df938690918c4EBB082BDFAF0BA7"
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2018-06-26_07:,,
 signatures=0
X-Proofpoint-Spam-Reason: safe
Subject: [oss-security] [ CVE-2018-1306 ] Apache Portals Pluto information disclosure vulnerability

--0__=4EBB082BDFAF0BA78f9e8a93df938690918c4EBB082BDFAF0BA7
Content-Transfer-Encoding: quoted-printable
Content-type: text/plain; charset=ISO-8859-1



Affected Product: Apache Pluto

Severity: Important

Vendor: The Apache Software Foundation

CVEID: CVE-2018-1306

DESCRIPTION: The PortletV3AnnotatedDemo Multipart Portlet war file code
could allow a remote attacker to obtain sensitive information, caused by
the failure to restrict path information provided during a file upload. An
attacker could exploit this vulnerability to obtain configuration data and
other sensitive information.

Versions Affected:
3.0.0

Mitigation:
* Uninstall the  PortletV3AnnotatedDemo Multipart Portlet war file
- or -
* migrate to version 3.0.1

Credit:
Che-Chun Kuo

Mit freundlichen Gr=FC=DFen, / Kind regards,
Scott Nicklous

WebSphere Portal Standardization Lead & Technology Consultant
Specification Lead, JSR 362 Portlet Specification 3.0
IBM Commerce, Digital Experience Development

Phone: +49-7031-16-4808 / E-Mail:scott.nicklous@de.ibm.com /  Schoenaicher
Str. 220, 71032 Boeblingen, Germany
IBM Deutschland Research & Development GmbH / Vorsitzender des
Aufsichtsrats: Martina Koederitz / Gesch=E4ftsf=FChrung: Dirk Wittkopp
Sitz der Gesellschaft: B=F6blingen / Registergericht: Amtsgericht Stuttgart,
HRB 243294

--0__=4EBB082BDFAF0BA78f9e8a93df938690918c4EBB082BDFAF0BA7--

