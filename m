X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Friday" "18" "November" "2016" "16:33:15" "+0800" "ChenQin" "chenqin@topsec.com.cn" "<46B49944-E27F-410E-A3BE-93A46F51B001@topsec.com.cn>" "16" "[oss-security] CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf" nil nil nil "11" "2016111808:33:15" "[oss-security] CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf" (number mark "U       chenqin@tops Nov 18   16/638   " thread-indent "\"[oss-security] CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9239 invoked by uid 550); 18 Nov 2016 08:40:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5530 invoked from network); 18 Nov 2016 08:33:32 -0000
Authenticated-By: chenqin
X-SpamFilter-By: HD-AntiSpam 5.59 with qID uAI8XGaS017836, This message is accepted by code: ctauth0007
X-Authentication-Warning: mail.topsec.com.cn: Host [202.99.27.196] claimed to be [192.168.3.3]
From: ChenQin <chenqin@topsec.com.cn>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_4769296C-3481-444A-9344-CD4AB49FF647"
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Message-Id: <46B49944-E27F-410E-A3BE-93A46F51B001@topsec.com.cn>
Date: Fri, 18 Nov 2016 16:33:15 +0800
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3251)
Subject: [oss-security] CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf

--Apple-Mail=_4769296C-3481-444A-9344-CD4AB49FF647
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

http://bugzilla.maptools.org/show_bug.cgi?id=3D2579 <http://bugzilla.maptoo=
ls.org/show_bug.cgi?id=3D2579>
fixed:
  * tools/tiff2pdf.c: fix read -largely- outsize of buffer in
        t2p_readwrite_pdf_image_tile(), causing crash, when reading a
        JPEG compressed image with TIFFTAG_JPEGTABLES length being one.
        Reported as MSVR 35101 by Axel Souchet and Vishal Chauhan from
        the MSRC Vulnerabilities & Mitigations team.


--Apple-Mail=_4769296C-3481-444A-9344-CD4AB49FF647--
