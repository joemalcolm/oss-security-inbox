X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2924" "Thursday" "1" "March" "2018" "02:26:43" "+0000" "Cantor, Scott" "cantor.2@osu.edu" "<DC701A09-7FAD-4064-8B6F-89D8202B65F9@osu.edu>" "48" "[oss-security] Apache Xerces-C Security Advisory for versions < 3.2.1 [CVE-2017-12627]" nil nil nil "3" "2018030102:26:43" "[oss-security] Apache Xerces-C Security Advisory for versions < 3.2.1 [CVE-2017-12627]" (number mark "U       cantor.2@osu Mar  1   48/2924  " thread-indent "\"[oss-security] Apache Xerces-C Security Advisory for versions < 3.2.1 [CVE-2017-12627]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5887 invoked by uid 550); 1 Mar 2018 02:27:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5841 invoked from network); 1 Mar 2018 02:26:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osu.edu; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=RHcOkMGm4rDLHg5gm2qkjNI+agyBBHxEIlaQs2RiPX0=;
 b=VTpB6K5AN4CUiyd/Sghy8o0ih1wfG9ExS+2nrpWoelFP/7a28McGUILdSvNg4Knr7+HvFAV3wkHBO4z4bCcMcthYzepJsKj75uYQhdeR43qH4Ttz3p1KlxSbZJTGEhim4ZypL1fstMcG2KVpvitWU6jsPDB7Qk4aOpDzEsAObpE=
Authentication-Results: spf=pass (sender IP is 128.146.138.10)
 smtp.mailfrom=osu.edu; lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=pass action=none header.from=osu.edu;
Received-SPF: Pass (protection.outlook.com: domain of osu.edu designates
 128.146.138.10 as permitted sender) receiver=protection.outlook.com;
 client-ip=128.146.138.10; helo=cio-socc-esr05.osuad.osu.edu;
From: "Cantor, Scott" <cantor.2@osu.edu>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: Apache Xerces-C Security Advisory for versions < 3.2.1
  [CVE-2017-12627]
Thread-Index: AQHTsQS9Raw9nnkfxk6izQcXcH0zHw==
Date: Thu, 1 Mar 2018 02:26:43 +0000
Message-ID: <DC701A09-7FAD-4064-8B6F-89D8202B65F9@osu.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [75.188.233.142]
x-header-sapphire: true
Content-Type: text/plain; charset="utf-8"
Content-ID: <C277AD270F0E274BBDC056E18637EB7A@osu.edu>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report:
	CIP:128.146.138.10;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10019020)(346002)(396003)(376002)(39860400002)(39380400002)(2980300002)(438002)(54524002)(189003)(50944005)(199004)(7596002)(478600001)(7736002)(966005)(59450400001)(305945005)(336011)(2900100001)(14454004)(33656002)(106466001)(109096001)(2351001)(75432002)(356003)(23676004)(5640700003)(7696005)(2486003)(50466002)(316002)(102836004)(786003)(106002)(26005)(66066001)(2420400007)(15650500001)(47776003)(5660300001)(6306002)(82746002)(575784001)(10710500007)(86362001)(246002)(2501003)(83716003)(88552002)(3846002)(2906002)(6116002)(5250100002)(186003)(8676002)(8936002)(6916009)(36756003)(11970500010);DIR:OUT;SFP:1102;SCL:1;SRVR:SN6PR01MB3870;H:cio-socc-esr05.osuad.osu.edu;FPR:;SPF:Pass;PTR:cio-socc-esr05.osuad.osu.edu;MX:1;A:1;LANG:en;
X-Microsoft-Exchange-Diagnostics: 1;BY2NAM05FT016;1:fbTDsx9S+JRnOVPX3QtlOOmW+yIDOt794NknwvsUKvqROrFtkLM0onzrHV54lksahh41tvH5iSItnp4gRxrnsArpUFFCUUdP9KQhP4+0o3OV/QkyHTbqpVJgsFinjlcv
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30bd1d73-8a93-4d52-d4b8-08d57f1be102
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(8989060)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(5600026)(4604075)(4608076)(2017052603307)(7153060)(7193020);SRVR:SN6PR01MB3870;
X-Microsoft-Exchange-Diagnostics:
	1;SN6PR01MB3870;3:pEkRmv/cG95CWMFrlJEdeLjKeBROb0d1eT8qt3bdmQbicU5PDaszn4NBa14ZLl5y/T9PaLlDe4/xopgzrjgmoSYIkLnUTuLRCDOVSnr+GZosg0JotK+KTwy6Rx+AXYWSnUpx7n37OtaWnhmAbeb91MG29zt8OySZHoKIc7OJQIwGJATD/VvEkbVf3R6y/4MYHeHoItKxMaYfkuJWbjU4LHzx8Dh+zf04dtkwAXpa2wvl07Abc/dyJ3WsSRSBaNZdku5mLPnLJKjzSB9JFjBcUay5US44l6PiE4qy7VmchZu10znJF/lTwdgcYvtIpxi7S5E79YAsPLtJojZS06/cMNxudah2SFGgLwgPrjs/v1w=;25:42UYl1kRzvld+O04B054PuYck3IyTR8dLpO9Hnvoq+wrW0hE8emXRq2r+4h1si9fvxQLxhWONhrj0T3Vt5SJXjf9hjjhjNL3g+SzW0S4campZ1bqOgIFAJSuw9B68KNOXPeNiqs0Gn15qwZ4rK7ZYBMJUSUB4Fqafd4G0YttaHlDUHee0a/vNe2W1EeG8ARa2B69U7F2wqQ62Iyo1AyITH+A8DGPG/pvMLYeDe6yyGw1Ad97bZddjh9rhL9PbqBrMA9mYVlaA9uuqNaSB3ib+xq6+LHZGAWbWd4RnvqXBvMit7PJIoOXYVwj1QgtDKEQtH/iFwwXMGjnbYrwWOTBQw==
X-MS-TrafficTypeDiagnostic: SN6PR01MB3870:
X-Microsoft-Exchange-Diagnostics:
	1;SN6PR01MB3870;31:KkocCYpFjp4SieZ2St1d+NUfVY+2i2jozhk+JOjKJBOTLVUX++v0TiwM4h6WsXm5rckYIJzxPRzLOFlm86qCm3a5VhV0P4ej4G8xhFHOHi6l1+mVJNAomp6mQRs9u+a5o0vW2HD3DZV0bvaYApvngVRNw67g4X0yZY1mtm7BRerEwFSl06SGzJfUnOzFrphiwNC0JbsVq5owxaV8G6hsGjJ3bY3qX40tb41unXQlOZs=;20:5nQs9v3OqXOazbUJyA94I8PHfKbbdIHS1z/DFx6THCnqvcMtN13R6DUSzo8fbLjjKJGqstpwIHJvtGYB30EtqLAUk5NsUMIV61o46750oop6ETCaB+9lsqoJqWrEUEyKa7yoAYXcT/yJr/QTikDlgK2huKJG3VnX9l2vh2SFYrVNjsAC8ZojDtYU1I8MJTvLtvWEWq+CKywrDM91VdhbXvdnbokuRykD2a0ENi+bTaY9emvjWA6B9Cup66KsjeP+j8fjEzCGOXncSQWLJQ29iAKettiy39RM5WON6Gb1XcmhzbmmzPV2Z8nf6ymXbKmcRNisYVGF1yoyqGzLooeFvWVCvJl80vcGPhooTa9M3nTdulsrc8w24wt366AuTOhvBZMn1tCiy9u9f2n8kO1JXLDj7CeKrC6o1txyedTBXz/0NUG5K7QycUXawXeAx0jpCwHkikh62ygwlEuXH5VQb2IfdjhIWQkC2gcw/rMnu4GIMVzBz67OyXcFD/bLX0M3
X-Microsoft-Antispam-PRVS:
	<SN6PR01MB3870106E6E31386C01F290CBD0C60@SN6PR01MB3870.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test:
	UriScan:(278428928389397)(192374486261705)(263151948205354);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(6040501)(2401047)(8121501046)(5005006)(93006095)(93004095)(3231220)(944501222)(3002001)(10201501046)(6041288)(20161123560045)(201703131423095)(201702281529075)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(20161123558120)(6072148)(201708071742011);SRVR:SN6PR01MB3870;BCL:0;PCL:0;RULEID:;SRVR:SN6PR01MB3870;
X-Microsoft-Exchange-Diagnostics:
	1;SN6PR01MB3870;4:HDZRlkIUpJd75CLpmlGdJZG9rVdqIoMnxxC2Tn5ka6XTY3xs4MnxLNkCwexqtbRQ8UvUT2jxN7g9eueaLHXOMbiTdZA0BnLEXm7N9kTPsxApOKrV/0BUvvGhZO68FMTeJTUnYrV70yThH0X5VpckFGldnq/L9LD4mHceIfdIcFqtC2dGEJLbTBplfYRAeVAdOP1kXlfU9noIhU41luBu66PyzCEBehxkt/OE4NbZuAWKtasZ4dPr/zRYvZjJIui2CnmQZ9M12jJDLfNkmE1BOGmV0ZcHXcr+eJtSJfCx1Vg6LWyM39Omz9mDNznS8E5HPJSTwiWHzqXfEOvVuPRq0uYdFlkh/EuHceplt4gP8vZOIqV7Pt+U4NNHasIzUOu1
X-Forefront-PRVS: 05986C03E0
X-Microsoft-Exchange-Diagnostics:
	=?utf-8?B?MTtTTjZQUjAxTUIzODcwOzIzOlpTNDdqT2tyOFl5cEFRb0JTODZQamNmc2JV?=
 =?utf-8?B?MDlqQUd0enNmZy8xUUlIS21lU1NJc0xId3YvVWovSS93djNPOXRWcjNJQWgr?=
 =?utf-8?B?RzA4NGpFVEZkL3Bjb25Bai9ScTZ6Uko3VCtybEpibTBia0xQK0NMdUhJbnRQ?=
 =?utf-8?B?MS8rb09mQ25ZU0ZTai9sNVpwTEtCUnhDaGdIMzVybFhIUDZTVzJablZNelVw?=
 =?utf-8?B?SXpQaVFsaWZwNzdsd2tUeVJaQllwWUFvNkFsUXhFU1c1dkJBYm0zK21zckd6?=
 =?utf-8?B?R3lLYXFYL3lsQWRhU04vQWVkREtEdjdjaVlwNEV6VkxRTWgwY3ZHaWt1M2E1?=
 =?utf-8?B?QkFjOFRCT0lVWERzZUpHVm5LRG5MSU11OUNDRk5lOHZyUkpyWEtvcWVndW9h?=
 =?utf-8?B?MmhEMmVzdlFQM3VoNnFjMzFocUtueWF2dloycStqWFVubm5qbU5qZW5WMVpt?=
 =?utf-8?B?eGpmZlZla2pvcHJhYnFkY2RGekN4c3lwUlIrTnhzOEt4bDVUZjc1MmdSZW1L?=
 =?utf-8?B?TERBSUhxS1NhdWRxWWViZWFDR09MK2ZhMjEwd1loeXV2L3U3bFMxaUZkM216?=
 =?utf-8?B?SGg4Rzc0YXIwc2xUVGU4bjhWdy8rYkV2dEdkbW02RDdlQkE1eHhNelo3UXNC?=
 =?utf-8?B?bDNCMlVaMXhCTEVJRGM3VWphMFVYTEl4aWF5bXliWlBoeGRwVE4wblRlbmdO?=
 =?utf-8?B?bDl6R3ZYSk1VVHlLbWRSb0lDc2RKYWZXV2VkaWFzeE1nVHY0ZXlhS1daVkpI?=
 =?utf-8?B?bTBWWXhPZ3V1R0dIZ1huNHF6WnRqc1RLQVJRUElsQnNRZFQ4T1lYdmhTRklB?=
 =?utf-8?B?bFgvQXp2eEsvd1ZrTHlFNjh2T3E3MUoxWVVMNXpWUjg1V25JZDFaa3cvYzZR?=
 =?utf-8?B?S2RqUXRLcGZzbjJ2eFRoaE1aUjFaeEowc0dZS3BMVFRCQTlwQTRYek5oTjg0?=
 =?utf-8?B?Z1dSQjV2L3dZWXdNQzl6NkV3OUM1c1NPZFlGZWQrVHhHeXEwWERLUHRza3di?=
 =?utf-8?B?dkFqQWlERlduenM2N1JaUnY4RTgzNlFpUW84ZWx1cWR1WHRBRTNsSDVrL0Vi?=
 =?utf-8?B?b3BNZGRObmRoaUE1V09oTlZKOHJVcmxnZUd2UzJGdjVqcmlkQkRTU0dsV0JL?=
 =?utf-8?B?NEhWS2RNT1BBaEJCLzVXT1JaV3JTVkcvQ1NndFZ4azIxV2J2aHdRMjkxdjBp?=
 =?utf-8?B?UFpGRGp4WDg4Y0w5TEYzdEdDSUFRVGszTlJNbWpab3pBdCtUbG1udzBZWjFG?=
 =?utf-8?B?aG5SWU5UendaVFpGTHhwZUVteStPLzlHcUxvU2VoSUxLSXozQXZZOWdGRTJP?=
 =?utf-8?B?NUFGNjJ3Znh4Y21oY3BhSXFtYmMzNFR5azlPcVpkMGFIVS9EMHRrU3V6bmpQ?=
 =?utf-8?B?RmtPMlpsOFdxZEFtMjF3cDJKb3lLTWQwWkd4WkpKN3ZkY1gxNE41anVhUS9w?=
 =?utf-8?B?Q0xuWkJWcUdicGlKZjZWRmhBUUhaTjRic2kvY2kyZ3kyMTFFZENXS3hERXdR?=
 =?utf-8?B?Z1pGb3NIZ1lMRHNYemN5ZFBkNHAzTFMvblhac0JTTWhVUUJOVnNodFhURGJP?=
 =?utf-8?B?S2lON2lhRUpqWGlIMDlFdDhuTUtrVEIwTHFxNTlFazgrSGdJSlpyTHlDYmYv?=
 =?utf-8?B?UTdWYnpRNjNmQ0ZreWRPeHdRVUxKSzB2Tm5BRExQZnkvWXZoZGVMdWJTWGUx?=
 =?utf-8?B?NHlQZDBSQ2c0VURtNFh5M1hudkJSRHdKQ2I2QW5qQXZzdDZvazAvVmVRS3lw?=
 =?utf-8?B?NFp1SnFNRU12L1FtTGYrM0F1dmFUeW15ODltOU55Y2dXOVI1N3IzZjA3Q3lB?=
 =?utf-8?B?VW8zeHJHbDl1OUxQZjZnNGN1c1N3Q0J6U1NYYk9IcDFvbWdlQ1ZRK2lFa3M3?=
 =?utf-8?Q?HaC+QcSyVc0=3D?=
X-Microsoft-Exchange-Diagnostics:
	1;SN6PR01MB3870;6:oPiMOLjKPvABBSOZ/mPrbjskc+BloVY1TSUcvzJ0qPXarIlzxZRzYUWJbOvLpWOPyQJ8jEEx3mdsI34Dd+UxJbjxfPk3qpZpIUg/1tT7LiQ0rDSfUadQv662WlDzks83ELJ179awRrFT8NjXL7DJcjY1KFTbfbKJli8A1aPWArt49dzFILHEp8GvFZ9eLuAESMIHjhJlaGZxVStKIZ2QqwlS2PenCA/ilCQv3rw0VoPfI7QqD+PGja2pC9HjetC5lPHtfwQa+sbCOEE7K+rdx9Tw34Dn1qJZJ6OcicT3NXm+02C9BK7L2NTWhE4Z/+NEEBOOJPRL3Fg/axibsRyhLw6CNIyg6gva62iK3hVIT2c=;5:B3JVDYdlpRo7rTFDnvo5G+/og+pKfVpnkMRpmOOEBBEsaRLHWrTqRDer0s6Nf7rek0E0d9Xox8PDB+/AmcAinpEAGg0yLBcsRUXF3+Dc2eXXTwlxbHRofjZUMnIkGLGzjRMDohvJcWB4UQibixKR7yfXgs9C6DsCD4Kuzr+WjtM=;24:ZnQUN3fhozpclwd49uR1l0s+/9luyXJl3o7Pls4ydTnYToBhiUgLXtqU7m+eO+GGoBUjb89edirgsifU4jQNua4BTkDpY5UIsIzpM44GkfI=;7:w16trBoG1Gxvdqsy4TtYAku+3rq70E2YgUP7jLQS8tcfLGeHp959/XGmH8peu67ui2S6V1Kdpg7YV2nnZvYN/xWwEQ9GKBfVzeXK8UuK48xj0UuY084kowBHsGOVEbQMzQdq2Vu7G2Srk6a+IeTjqtJ5aZuAEHqjOCSkJ3xY/IPcfmtGUc04bRPYLkYCozglEt3Vyi99+wQETD8APZdSh/Vo2NGZWRdr2p2zSyqkHtYq1EeF1ys/GftBEfEGVClF
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: osu.edu
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2018 02:26:45.6978
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 30bd1d73-8a93-4d52-d4b8-08d57f1be102
X-MS-Exchange-CrossTenant-Id: eb095636-1052-4895-952b-1ff9df1d1121
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eb095636-1052-4895-952b-1ff9df1d1121;Ip=[128.146.138.10];Helo=[cio-socc-esr05.osuad.osu.edu]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR01MB3870
Subject: [oss-security] Apache Xerces-C Security Advisory for versions < 3.2.1
  [CVE-2017-12627]

LS0tLS1CRUdJTiBQR1AgU0lHTkVEIE1FU1NBR0UtLS0tLQ0KSGFzaDogU0hB
NTEyDQoNCg0KQ1ZFLTIwMTctMTI2Mjc6IEFwYWNoZSBYZXJjZXMtQyBEVEQg
dnVsbmVyYWJpbGl0eSBwcm9jZXNzaW5nIGV4dGVybmFsIHBhdGhzDQoNClNl
dmVyaXR5OiBNZWRpdW0NCg0KVmVuZG9yOiBUaGUgQXBhY2hlIFNvZnR3YXJl
IEZvdW5kYXRpb24NCg0KVmVyc2lvbnMgQWZmZWN0ZWQ6IEFwYWNoZSBYZXJj
ZXMtQyBYTUwgUGFyc2VyIGxpYnJhcnkgdmVyc2lvbnMNCnByaW9yIHRvIFYz
LjIuMQ0KDQpEZXNjcmlwdGlvbjogVGhlIFhlcmNlcy1DIFhNTCBwYXJzZXIg
bWlzaGFuZGxlcyBjZXJ0YWluIGtpbmRzIG9mIGV4dGVybmFsDQpEVEQgcmVm
ZXJlbmNlcywgcmVzdWx0aW5nIGluIGRlcmVmZXJlbmNlIG9mIGEgTlVMTCBw
b2ludGVyIHdoaWxlIHByb2Nlc3NpbmcNCnRoZSBwYXRoIHRvIHRoZSBEVEQu
IFRoZSBidWcgYWxsb3dzIGZvciBhIGRlbmlhbCBvZiBzZXJ2aWNlIGF0dGFj
ayBpbg0KYXBwbGljYXRpb25zIHRoYXQgYWxsb3cgRFREIHByb2Nlc3Npbmcg
YW5kIGRvIG5vdCBwcmV2ZW50IGV4dGVybmFsIERURA0KdXNhZ2UsIGFuZCBj
b3VsZCBjb25jZWl2YWJseSByZXN1bHQgaW4gcmVtb3RlIGNvZGUgZXhlY3V0
aW9uLg0KDQpNaXRpZ2F0aW9uOiBBcHBsaWNhdGlvbnMgdGhhdCBhcmUgdXNp
bmcgbGlicmFyeSB2ZXJzaW9ucyBvbGRlciB0aGFuDQpWMy4yLjEgc2hvdWxk
IHVwZ3JhZGUgYXMgc29vbiBhcyBwb3NzaWJsZS4gRGlzdHJpYnV0b3JzIG9m
IG9sZGVyIHZlcnNpb25zDQpzaG91bGQgYXBwbHkgdGhlIHBhdGNoIGZyb20g
dGhpcyBzdWJ2ZXJzaW9uIHJldmlzaW9uOg0KDQpodHRwOi8vc3ZuLmFwYWNo
ZS5vcmcvdmlld3ZjP3ZpZXc9cmV2aXNpb24mcmV2aXNpb249MTgxOTk5OA0K
DQpBcHBsaWNhdGlvbnMgc2hvdWxkIHN0cm9uZ2x5IGNvbnNpZGVyIGJsb2Nr
aW5nIHJlbW90ZSBlbnRpdHkgcmVzb2x1dGlvbg0KYW5kL29yIG91dHJpZ2h0
IGRpc2FibGluZyBvZiBEVEQgcHJvY2Vzc2luZyBpbiBsaWdodCBvZiB0aGUg
Y29udGludWVkDQppZGVudGlmaWNhdGlvbiBvZiBidWdzIGluIHRoaXMgYXJl
YSBvZiB0aGUgbGlicmFyeS4NCg0KQ3JlZGl0OiBUaGlzIGlzc3VlIHdhcyBy
ZXBvcnRlZCBieSBBbGJlcnRvIEdhcmNpYSwgRnJhbmNpc2NvIE9jYSwNCmFu
ZCBTdWxlbWFuIEFsaSBvZiBPZmZlbnNpdmUgUmVzZWFyY2ggYXQgU2FsZXNm
b3JjZS5jb20uDQoNClJlZmVyZW5jZXM6DQpodHRwOi8veGVyY2VzLmFwYWNo
ZS5vcmcveGVyY2VzLWMvc2VjYWR2L0NWRS0yMDE3LTEyNjI3LnR4dA0KDQot
LS0tLUJFR0lOIFBHUCBTSUdOQVRVUkUtLS0tLQ0KDQppUUl6QkFFQkNnQWRG
aUVFM0tvVkFIdnRuZWFRelpVak40dUVWQUluZVdJRkFscVhYOVFBQ2drUU40
dUVWQUluDQplV0lRYUJBQWlrUjg3aTByeGljcnlGTzh4VmtoRW5ybmVXbjRB
TTFoNTVIWk5sSWRZWHpremZjUXFlTGJ0VlNPDQpiSmV5NXhaSWlMNmxvK3li
TUtYeW9JcnFqdGtEMUxqcW5IY3lGUE5DRlpNRDU5dlMrQjQ3Yzg2VTJKVTdq
RVBJDQpOK1EzM1U4ZzhIMGZBUGhkb3AwWG5oVWlYQkJ2ZnBXSWZsdW5VV2Vm
TEUreWJkOEo1L0I3Q0s1NGZlQzAvOENLDQpRNDdMbWowYU1LRHRDTTM3Z0FE
YmQ2Z0k2UE1KN0txamY1eWI0NW9rcDJxaFVaRnArOHpyYmN6Vm1rL1c5T3B0
DQpKY3VveEpGeCt5ZnF1TXZzK3lFZWxPcjBtOHZHdFZKU0ZFSklMWllFcGJp
TWpNRnZ2QmJYTkNTUXNQcDdjN0I5DQppZExTZWN0OVpEaDVmL3IzdkVXS1dx
NjNkSUx4TkJWbTNENks5UHlFc1lNazNyT1RMZVlpbjRLTTVSUnNtUlY2DQo4
UVVDMExTNXk3cThac0U4b3UzWG9GbkJOd2NrSFkzeWl4Wjk5a3BsTTdTbnpB
TjdOMUVIQmxRc0dZT3NFb1ErDQpycUlXU1ByYlJFNkF4ZGJycW84Rk1qd3Er
a0JCM3p1NC9BVmw5VmJVclY5bzFkUUdwcFd4cXBSdGhVQUl6NmhTDQo3YWJx
UVhyZHJwWHdWT3gvZFBOOS9WSzhFd21pQkxjdmdHSUdtbG9BQmtQcnp0N0Rx
Z3FRZlVVZU5TVWJRbEJEDQpleGhja3A0aXZKcmUvRjJsYmROY1lxNEVUU0J5
YkIrK1JDSkY3NERLaHA2RXd1RmRkQ1FmVjVicWplaW9DdTlLDQpjWWpUYnpM
Ym96OGpWclhUaWF2cVkxUnBhenYyYWdwK2J2MWpUVStuVjBXUVZhb1NkMGM9
DQo9NEJRNA0KLS0tLS1FTkQgUEdQIFNJR05BVFVSRS0tLS0tDQoNCg==
