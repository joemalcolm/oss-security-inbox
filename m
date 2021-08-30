X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1996" "Monday" "30" "August" "2021" "21:45:53" "+0300" "Jussi Hietanen" "jussi.hietanen@tuxera.com" nil "47" "[oss-security] NTFS3G-SA-2021-0001: Multiple buffer overflows in all versions of NTFS-3G" nil nil nil "8" nil nil (number mark "U       jussi.hietan Aug 30   47/1996  " thread-indent "\"[oss-security] NTFS3G-SA-2021-0001: Multiple buffer overflows in all versions of NTFS-3G\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] NTFS3G-SA-2021-0001: Multiple buffer overflows in all versions of NTFS-3G" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7301 invoked by uid 550); 30 Aug 2021 19:38:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15582 invoked from network); 30 Aug 2021 18:46:05 -0000
To: <oss-security@lists.openwall.com>
CC: Szabolcs Szakacsits <szaka@tuxera.com>,
        =?UTF-8?Q?Jean-Pierre_Andr=c3=a9?=
	<jean-pierre.andre@wanadoo.fr>
From: Jussi Hietanen <jussi.hietanen@tuxera.com>
Message-ID: <6a9f2b22-ca6d-24e5-5eb3-3b1bc7da2805@tuxera.com>
Date: Mon, 30 Aug 2021 21:45:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [194.100.106.176]
X-ClientProxiedBy: tuxera-exch.ad.tuxera.com (10.20.48.11) To
 tuxera-exch.ad.tuxera.com (10.20.48.11)
X-Proofpoint-GUID: 8jj3rhG5M-wjzgFbuK2TOFS1c8LArTMj
X-Proofpoint-ORIG-GUID: 8jj3rhG5M-wjzgFbuK2TOFS1c8LArTMj
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-08-30_06:2021-08-30,2021-08-30 signatures=0
X-Proofpoint-Spam-Details: rule=mpy_notspam policy=mpy score=0 bulkscore=0 mlxscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108300122
Subject: [oss-security] NTFS3G-SA-2021-0001: Multiple buffer overflows in all versions of
 NTFS-3G

Security vulnerabilities were identified in the open source NTFS-3G and 
NTFSPROGS software. These vulnerabilities were confirmed and resolved. 
To our knowledge, these vulnerabilities have not been exploited.

These vulnerabilities may allow an attacker using a maliciously crafted 
NTFS-formatted image file or external storage to potentially execute 
arbitrary privileged code, if the attacker has either local access and 
the ntfs-3g binary is setuid root, or if the attacker has physical 
access to an external port to a computer which is configured to run the 
ntfs-3g binary or one of the ntfsprogs tools when the external storage 
is plugged into the computer. These vulnerabilities result from 
incorrect validation of some of the NTFS metadata that could potentially 
cause buffer overflows, which could be exploited by an attacker. Common 
ways for attackers to gain physical access to a machine is through 
social engineering or an evil maid attack on an unattended computer.

We recommend installing and applying the update with the security fixes, 
and advise to follow security guidance and frameworks such as NIST for 
assessing and improving an organization’s abilities to prevent, detect, 
and respond to security threats and cyber attacks.

AFFECTED PRODUCTS: All previous versions of open source NTFS-3G and 
NTFSPROGS.

WORKAROUND: None

SOLUTION: Upgrade to 2021.8.22

PROJECT URL: https://github.com/tuxera/ntfs-3g

ADVISORY ID: NTFS3G-SA-2021-0001

ISSUE DATE: 2021-08-30

SEVERITY: Moderate

CVEs: CVE-2021-33285, CVE-2021-35269, CVE-2021-35268, CVE-2021-33289, 
CVE-2021-33286, CVE-2021-35266, CVE-2021-33287, CVE-2021-35267, 
CVE-2021-39251, CVE-2021-39252, CVE-2021-39253, CVE-2021-39254, 
CVE-2021-39255, CVE-2021-39256, CVE-2021-39257, CVE-2021-39258, 
CVE-2021-39259, CVE-2021-39260, CVE-2021-39261, CVE-2021-39262, 
CVE-2021-39263

CVSS SCORE: 3.9-6.7

ACKNOWLEDGMENT: Jeremy Galindo, Akshay Ajayan, Kyle Zeng and Fish Wang 
for reporting these vulnerabilities.
