Received: (qmail 17912 invoked by uid 550); 24 Jan 2025 16:05:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5894 invoked from network); 24 Jan 2025 01:43:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=210bCta35F4QZYkB6tm4Rtzf1NIxBBDg83HKXt4sZSQ=; b=
	dC+zX7snTYL9d2UwyTF/qPGonltylKeI5g6hDVFaeTXMt2O13vzvmnZf0um1coyB
	YLBlZBtOZrGUlhG7ZMN9IjMQMNgsLNk+tXn07SzF8VudQHVQiB2aaRdk9k88gabT
	wUi7NSddmwP9JkUb1UOQ5LV0rBNfM+adJTrWLWkiP7n3w5kegzlu9PiRgre4oaW5
	INovBgG/eANsC7MUax4bSVtBWNp3bfnBao54nq2sXjqnneYhYEtmWVgN8TKBCUvk
	/7uB18kPcvN/rmpi+3cQ/hgTgvZCywOy5c4sxOcJx7MUG5I8s5pr5+C+KMOhA5LF
	0k/vkOmEvkAywKoTZzaMtA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oxclp+0VnLSFY+w+oYzblZ5XCqrJ4bLfekzZAGWGahYQBCiCx9k1fqWRvVDvXpcS+WQmCZPDO1uXhiDO6V1JfOuMSfVhMwyZbsN1ffEncvzv/r4nbSQnQY5h9Dbq1tcL0Y8hfYXtW2PbuU/IW2PXJYIPHtV4/kKu1ECew/Pkk3VSA/81dlRTtnrT6Y/4Hu4s46nR6pCAkNozzNb6xnDgmq7XSa3L4CqhsZu7Qa5801FTPl9DK10haqMBHEeCdUSW3I+4c/faTTx57NeIJA6zulkexzkMDgvUVM3eCvpnAwEtWRxdgP0BBUEJvFauCVk7cwRH2Pe0bEDl06zgPXs2tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=210bCta35F4QZYkB6tm4Rtzf1NIxBBDg83HKXt4sZSQ=;
 b=tx6oT1tf6rIiBP7OBu/JBvRNxsIuZfXGRx20gaWxgebEA+keHPfwnjOWAfuqwpuaPrLDuYEjuIlYkHZa9zbc1xmE0qqA3KkOrIBU2HCeZKVN3+r6Bg8U9vuYWmoksRc+xqdgtHBdVeaO4vzInwb4UrV2Tiy1OWPr+cBhxDjTAls1gWUN7siGkbuaF4kiwc+BiTq2YMGcTrMLPYqlf6d9Mw3fMpE7+Tr5Rb2JIkYszl+pP+TY9AGkTOAnZ/fW1mFg3tquCWl8AQoJQdV41VoFWqN8/MMd2Ep+AGqan5y+8lOvYNyTieIttvogyNNLRSVT+jg/pIq+i8dgxN5KrYbxaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=210bCta35F4QZYkB6tm4Rtzf1NIxBBDg83HKXt4sZSQ=;
 b=Y4SlDjvbmgbYhBn3fZ4fYDxzT+Hurvt36LxxZhGIQ0PN8RzjQFtlG0+eB6EDMO939kBrtr6fnjCJAPsZYyBDhG/nq/hyIgtStBS8Y6z87n6zXnSRFK8juiiwDFphR/H3g5ZoNhcYEo4t7fWUtceZRbKnsbVHwcE5ieVcVRbrbN8=
Message-ID: <ca53add1-bab2-4ccb-8473-1f16214b0563@oracle.com>
Date: Thu, 23 Jan 2025 17:42:18 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Cc: "Olle E. Johansson" <oej@edvina.net>
References: <20250123024222.GA16803@openwall.com>
 <31A9EE0D-3415-46F5-BDC0-8AF758D9A0AC@edvina.net>
 <5c74b424-0c6d-49e8-b53e-bd637a1f9ebb@oracle.com>
 <20250123235736.GA22781@openwall.com>
Content-Language: en-US
From: Bruce Lowenthal <bruce.lowenthal@oracle.com>
Autocrypt: addr=bruce.lowenthal@oracle.com; keydata=
 xsBNBF2uGv0BCAC5vvtU2WmgMRCGDUkN47AsQ67VFIytonNoFpKrBrdFwhT/nVz+XurKi07r
 5Ib55dg+5r/lYlAE2GAE0FGipK1t9Iw9SB5rF0kgsPpjxvDAsdV4Fr3wVplQj5hQverHMKYp
 O/VSAF3JMjXIb2xn/Nms98Kjbb3RG9okJCCJzfqa5cHwMH8/td05MNeQLVG7qAnYheilgU86
 P1xrkAn/2o35Llsqv6qQg8/P6+HglC+thZv+mVzKzShTGfE/GgRnCY7CMQfeU2iUkRvevEZ4
 mvQZNoRTYbP7I478p/NC0QqlcxIUy9kYTUz6lTNi4i1rRipQraGB4Gb2bQNpczJ9v/XtABEB
 AAHNLEJydWNlIExvd2VudGhhbCA8YnJ1Y2UubG93ZW50aGFsQG9yYWNsZS5jb20+wsCUBBMB
 CAA+FiEERSaMsMd3fb9vyjrf2NN4zmGSE0UFAmZCZqACGwMFCQxWBnMFCwkIBwIGFQoJCAsC
 BBYCAwECHgECF4AACgkQ2NN4zmGSE0Wiswf9Eg/YgqwpfXqxPAI47JcYRlimZMmXVNYS2xuD
 NhJi90a4slEUCMl7tqrj+4YaLdBKxDzWi5uU403x5bd3IdlyLBfkFiam4CDqAhJoivSa8DQc
 ew8spHm/ctpLs3ZngwgcLxinVnhezEE3ewZrKPVR7QV/EUFPhRYjd5Sy7p50lXHuJnx+nh43
 3BmnlMQ/ulAFSgJC5OATFrBI3jBT8DQLar/dK/xLF3VVylnRBBKIN9NIWm+ZCIoMxkcaCJwr
 FwPoeD1YGSXqJxls7Rtasl5lOINZvrduzyPvw0OW2fqfGqDyqI3LrZ94VpD3KrBDo6qMUV0a
 7pweOPjpcRA600ZJ387ATQRdrhr9AQgA2wIaVrIYNgJooDeSeq6ltMmRMcrnZ5FQhmtsuNKs
 puvN83qDXWDOuUetaAUIx1Hp7gKXpGMSffdbczLDV9GIM4if7OHEp2bC64IjV4uy/gIOZ/QE
 HStRiJoMp8Zg/TgZppv70756YNxTnn2CjSO1crj2ccbc+hmL88hEh3seoPw0b4QEq8exV9Oo
 PlD/8/64VD2LD5zE9COSgf18cDU7OrWR0MOw7237nbOzK8JEgE2LRUvyPhv0UDLX5jlW3F7Z
 PHme7a3lEGyTrh0yUqVRid3fU2LITnehVrVgO2wLf/dTx4k7/L/C04XoHmknOB/DjChXjILl
 BJRfyX5KzAafoQARAQABwsB8BBgBCAAmFiEERSaMsMd3fb9vyjrf2NN4zmGSE0UFAmZCZqAC
 GwwFCQxWBnMACgkQ2NN4zmGSE0WK5gf+ItfJz8Od3E48Vt9q5fCAnRQG24Lcm7lDXcwnQqaP
 gMyST4IWbxZ+wBOs+6t57paoYobOmPTId4urzSiCoENC79B2KXABpi6OL3p2/ht/Khf+3GtB
 j+BYknm+Ryn5e2Z/BcYosXyEc16L5nVPNsgL5oFKOLHbcqLxElw+JgdGx2MkYBll0o0u0R2l
 WDymUH+OAkz12qcs9lAuHLyIH7laXhXAgBxzuk9v8/CQtAgsyfag4K1lf0b9o3xAdOXN9gM7
 S2SRhcwVuRY2s9oQJUClPjLwRKLvHH4KgcsLETxA/PbyRZrBRj0MMr8XHnzVBIxRlg3DKdQ9
 fLV6nH0VIlZpFA==
In-Reply-To: <20250123235736.GA22781@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN9PR03CA0245.namprd03.prod.outlook.com
 (2603:10b6:408:ff::10) To PH0PR10MB4744.namprd10.prod.outlook.com
 (2603:10b6:510:3c::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB4744:EE_|DM4PR10MB6136:EE_
X-MS-Office365-Filtering-Correlation-Id: c0fe61fb-ed4f-4ef0-7ca3-08dd3c1857ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?T1BUZENTYitqUDdvWEpYWHZPTDl5VCtiKzFIbDRTSHVCU3Z6THhoWGpyMUZF?=
 =?utf-8?B?clRKa3B2NXF2TFcwNXE0aEQwL01nM3lvU0FEU0dzeTBlbE9WSUFBNUlkSGNy?=
 =?utf-8?B?Sy9uWk9ONUt0OVZjTkNXd3dyejBOd3Q4WkRoWHRqellqd1lNa2YrczlNeDRI?=
 =?utf-8?B?RDF4Wm9sK0oyQ2MvQ0diNFhObUo5QjVUTUtCT0l3N0pOMzY4YmhUSnpKdUgv?=
 =?utf-8?B?eDZCbnpHVVRzK1E1bGluV0x2bjArVG1RWnFlZFd1cWwwRDVNUWhRU2hnSEEw?=
 =?utf-8?B?MDAyMXJKdE5YaUZLa2pDOXQ3MVNwcDlWcCs2aXljZWJMVHVrYmxIWUw5Y1Y4?=
 =?utf-8?B?ZjFwaXlnb2EzNUVHaUtqQXZMdGlWbi8wRWMwU2JSN20yaTVTR0NkYTRHOE1u?=
 =?utf-8?B?ZC84cXF6RTkvdW0zWDYrUUlRU1M3L09jeG5WSk1ydVVtSG1JV2tKd08xOEFW?=
 =?utf-8?B?N1NxK2pCU2wvU281Q1VZdWxHNzlVcnRHZjY0OFd1bXl0LzRkM3BYSHNsajdL?=
 =?utf-8?B?RUZscTF0WjVWOHlQYmJDMTh1bHhmU2NaTGVzblhKZHdIcTdOZmZXdlh5Y0Zj?=
 =?utf-8?B?K2dRQnA0N1hpL2hvWCtQajREaC9PYkxZR3JJL0IrY2Y3d3hGWmlMWFVuLy85?=
 =?utf-8?B?dmpqYTNmbWFIa3M3UzJVVlNmQjdHM0pOMGxsd1hiek1kYmU5MHd0MnVrN3Bl?=
 =?utf-8?B?RitJbk5PekcwWTV1djY3UXlhQXYvOXptYTNYMXlnZS94Zk1ieWN1OWZMcEl2?=
 =?utf-8?B?Y1Fsczk2S2U5aVYzd2NXLzNwU0lWbzltUkZ5d0VNVTBqem5BSEpkR21zci9q?=
 =?utf-8?B?N2gzMm83Qmo5bzNrNEhmelY5L2pGMTRZK056M0wzWExuUTVHRXdDZFVCbUcz?=
 =?utf-8?B?a1hTN20veWxMRTRZc21EY0huR1hlcXowWFhYa3VjVlUzWFlJRWlndUxGTTJ3?=
 =?utf-8?B?NmFFQThna25rTGw2K24wS3FUdnlpY1ZPOUxkQjFrbTZ2cElyeW14WlcySU5Z?=
 =?utf-8?B?VmNoUmpMd3BhM0NYTjFXWThuaWZuOXV1NmJVaUd3RHZ6U2c3c2szS0pueHli?=
 =?utf-8?B?TFdBOGx2L05RbU56WUNDaC9KMWl5Zi9haitkZTk1NWFMbWR5TUtPRER6RlJs?=
 =?utf-8?B?dllsc2ZoNWVZSlBFRExWZzVWRWIwRGhEK1lFem1jUDdpNVBJcUlyS29OOFpT?=
 =?utf-8?B?S3pocWhydzE0Nm9Dd3ZnZ1N4YldtMFBIWTBFYXZ4bTVEaHowUnNvcnNRZ3dl?=
 =?utf-8?B?RGhtaTBYN1NESTl0RExQcWhYdkVQcE9EcUt6cHpTZmtzZFNBd3RYVkVJTEpI?=
 =?utf-8?B?WExYZ2lhRTNQT1dyMDcwSkFSeUJxbFVMcjJLdnlpcVdwTXpoWFhFSFhlNmRI?=
 =?utf-8?B?RkRqRUZhaGRSc0d2aUhFQ21XZnFBMnJ4dkpzaDFVcVJuUGxSOWtwdDdLYndj?=
 =?utf-8?B?Z3VmSWQvcXpaRTg0aW03Mml0VUxUVk1XcytMcDlLWm9Oc28zTGxYQ2cwdVdS?=
 =?utf-8?B?aGpEVC83K3FydktHY2NpSUdPR3BvemdVYThmbmI4bTkyQ3lkRHVZT0lmTUNZ?=
 =?utf-8?B?cml6K1pxQytLL0h3SEJwWDMrWUNPVnlpaEZvRldxN081Y21hNk5meThlazNN?=
 =?utf-8?B?cFR3VUc4Yld6b0QvSUFSdk9TNStvK2tBK3EwYWdZZUVMVy9zMTBHQ0RjdjAr?=
 =?utf-8?B?NUR6VjFhaGFLc0liUUZQZ09JVzJ0cWRWdTk4cUZOaEdtZVBIRnFPeFNyVFo1?=
 =?utf-8?B?dVoycWxUNUI0Q09FcDFjb3F2VkRSMW5lb1hoVWhxUzlYQk5ldmNFZ0NYWDVn?=
 =?utf-8?B?MmNJQ285WEhZTWYxNExHUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4744.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SjRZZktRRWxvMlRqekQvMUNYV1ZMWHIraEd5ak5sSnNSM09FNi9adG1rdmVj?=
 =?utf-8?B?WU9EeTNsdzF2VlN2TEIwT09rQTRWWUFURlFGQlFBbUN5T1o1TjBlN1ZpS0NK?=
 =?utf-8?B?Rk1XQmxSRWdUS1JMTHVFUlAvdDI1VXZtZzB2bjdtVFpDcmVDTE9wTWpTQjBN?=
 =?utf-8?B?a2wxd2VtZDVkcE15ODJiZ0E3MWxpN0d2Zm1JUDNNVDZ2czFZNTk3VWlQSWJE?=
 =?utf-8?B?RTJCTTIvQkt3c0VlMk9MNjB0blJjN2UxRk43bGVPcVFIcHl5QkhZVFU5bCtT?=
 =?utf-8?B?cXZQY29IcTZmd3ZvalB2VmlwcUovcXUwT0pLdzZxSnYxVlkyOGthZitYaFBx?=
 =?utf-8?B?dlFGSEZZQXhvcVNmNFlJeFRqbXFPekJKK3QxZEVFVDNLelVSZGJyS3ZmTUEv?=
 =?utf-8?B?QWxNaEFSYnpxaVZMYzhhdlc1ZFZVSFp0RE9xQXlKbW1VdnZvY1l2amdZTXc4?=
 =?utf-8?B?aXdpVmJwNWE0b1k4bnRITElQZ1Z5ZFRENE12N2lyRndLR2huQzVHMlVqMlRN?=
 =?utf-8?B?Z0NlaG9QVG1pWnRja0ZjSFQ5djR5K1VPQ0JwOFp2TXRoVnlNWWpRbmhLNEJ6?=
 =?utf-8?B?bWhoVXVsMENaMTlMMWhjSDI4SkpJaENPK21LK0I4Ry9TUVdyOXI3SzhBYkdZ?=
 =?utf-8?B?WWZRMzhWYmZGQkVIOEEvTVhoaDBIbnpGb3hwZklCcmw1MTNKNUxaSmVaZlht?=
 =?utf-8?B?RndxRko2NE1ja2g3U29PcXhHR0xQZk1CYnJRSnRWOXByd0dOdS9WRlQ0T2lI?=
 =?utf-8?B?K3lWdWpiTmgvbjRRU3N2VmdoZEhKaFhacUgxd1Jlc3J5bXIvRStndGlsSjQy?=
 =?utf-8?B?SW1iRkRmTkVOeUs2Yy8raUs0dkZiRkZ3a1hjVWsrSldWSmRFZzJ3QVpuQ0NX?=
 =?utf-8?B?ZnVObldleFlnOVNKWllhUU9OQTlSd2lUaXpXQ1hwWUhHNk05YTR5TlZQRDFj?=
 =?utf-8?B?a1kzalM4aVVSWEppMVpMbEd0TGRBNzlDdyt2UUdKOHpwc2pPUC9jWkZpVkNp?=
 =?utf-8?B?Nk9EVHdUTlRyVktPa1BnZnZ3b1JqNDJvOHdDeDVlOWlQZmxrNERPbmxaR0tx?=
 =?utf-8?B?M1BEYkNDYkxiNU1SbUtReWsxUjdtSG5CSWZxcXNEWFF2RUx3M2VDd1RMOUdQ?=
 =?utf-8?B?c1NSenpUK0Vnb0NHSkU5a3BUMHNmYU1KYjZGUy9SR3VVeGlHaEYyVHNGcjlq?=
 =?utf-8?B?RS9hU3UyUkZJbEpvSVo1RW5sSk9zZVo4SWppd3VsNWhOL0lFb2pVTVZOY1NO?=
 =?utf-8?B?T3ljVmlQaEl1R3lHekl3V1ZwdkZYNDZPdkxrOSs3V1Z0MFJVc29ReGhmcmx5?=
 =?utf-8?B?Tk1jWXdsOWpFd0k4aVJIL3gweE9yUUZYN2lEU0o2MVRiZ0hLNktqU3Q3aVBt?=
 =?utf-8?B?enJKQUUxK0x2azVNZmpIOG1vUkV5NHFJLzUzSHZJTkRiRWNMc1dsUjJqajZY?=
 =?utf-8?B?cGQxRWdBQmZMT09wbmV2N1QrMnV2Y0cwb0h5S2pNWHlzZGhETzdNeVJFMVdy?=
 =?utf-8?B?U2ZTYVVVcFJUOUtVRWQ1MmRTOTB4eC9VNWxoZjJKMXJETlg5Tm1EUU9YeVVE?=
 =?utf-8?B?di85cXRNdVUyTkl2TnJzbUp3SUg1Y1JTNlNYcFZROFlLN2oyQUk1dmtxQ0Nm?=
 =?utf-8?B?Uy9WKzFxZzZJSklUbHR6WlhqaHBJSktRMm4xNU1RSzhqeDFtVS9qVEtrUGIr?=
 =?utf-8?B?WVBna3hadzMzeEYxc3hWWVIrYjVmM1FPS0FlNmhjRUlLWHhpaDlidzBFdHhY?=
 =?utf-8?B?TDhGaTFac3F3dC94NHdKeFQrWGJoMVdEd1JqdmtGMFA3bFlyM1huNUl5K09W?=
 =?utf-8?B?NHBEK0k2bzF6dDR5ZzFtaE9mQnQ0RTdHOStKMVErSXNRWXY3WklZZ2hyUkpa?=
 =?utf-8?B?cTdzdmpzdmxWVWVJZTRXaGtxU0g3NHI3YmEreFBLR0ZuNEVxemhrNlVTLzlD?=
 =?utf-8?B?MjZZV3dSTWlUOGNZTmp0SUhaWmlqb253S1BPQTMya1U0bmIzRVRMMjBEaE9T?=
 =?utf-8?B?aHRmdm8vK3EySmhZU3RWLzhOaHB0STV2NnE2bzMxYVMvNC9jaTlXNXlpektR?=
 =?utf-8?B?bjNGRzZPQTNlU3JIQ3NRZ1hHT0N3SkRFSHVDRkJNZEhaRmhGUEplNnhVN3Jl?=
 =?utf-8?B?SFZKUEFxNWw2Ym9NalVRQ1BwNXQ3K3pNSE42QWptdUhhQ2c5a3NVOW9aREJz?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	RV6ToVN2PhuvyKwnWvmBbsi1SSL/+4Yuz0YEHZo+HOntjlsGTyYWNZfZjEDrmoO1600xXcla2M2yfXvTmkWB5+ojmRlO9gL0nFKVaPF5KY8WFJD+UyO1Jykrv3NyNuCrk87pQPBWZ3rp4kDzAcGvxbvDnQUfIKZoBb3OnlU6AR2Ps7OyDEPGaVWAQ2pDJV8sHv/jYKhsKP13m+tIS+Ib4CgNmSvPlDc2zCCRlwcpYa43M0K6T9IN53FSQa/PGFKn0zwmlpZOFcRLKmklxTRisHis9G8ypaP5pPBguxw7NZvYPN/3/EhUkaSpsUOF9Db1jTDSES6BTQtGlhtrV50QAQmF3xFH0txbe52/2CfAi1nf9alfrcvIx5YWdN4a7LTVxCGYzyxPWhjZbkmc8ju7meZU5LYpi9eqqko/vxzGnZC2lyUq0cT3HZZDDNEn4zQ8cV7ckGIOpvfJ5uZfHWqBXq4UgShK7Z2UNAqS370dPX0RVr1ElmNi7LL4nadElVCTynWI5C4bL2isLh/MgO1aZPAMTZ55sRHcz/8gcsH/+NOWxEHAmevCvojHxHo6GuvWuXrZasFjw8nvewidjdYdeqKz8YNWQItd3m6ExKBMXZs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0fe61fb-ed4f-4ef0-7ca3-08dd3c1857ef
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4744.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 01:42:21.1435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Um02FeLADE2x9mMzaxEgSIrRNrFMsXW85LAM0c/tuCeppcb1SBR+dX9yiWa0/OWuoGZQx1C46Y7mDHwVbLlHw38llD8xa6I9Qh8apeY88DU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6136
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_01,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501240010
X-Proofpoint-GUID: _SqfSsUQSsdIwYggB_goZWzd9p64xHUu
X-Proofpoint-ORIG-GUID: _SqfSsUQSsdIwYggB_goZWzd9p64xHUu
Subject: [oss-security] Re: [External] : Fwd: [oss-security] Oracle January 2025 Critical
 Patch Update

Alexander:

Comments below.

Bruce
-----

On 1/23/25 3:57 PM, Solar Designer wrote:
> Bruce,
>
> Thank you very much for your reply.  My reading of it is that Oracle is
> already doing a lot (publication in 3 formats) and isn't willing to do
> more (also separately send info pertaining to Oracle's Open Source
> projects to oss-security).  Is that correct?
We will sent eMail notifications to anyone that requests them , 
including oss-security, when we release security advisories which 
include both open source and closed source products.   Oracle will not 
specifically call out open-source projects such as Java and MySQL but 
Oracle expects recipients to filter Oracle's advisories for their 
specific areas of interest.   Since Oracle provides our advisories in 
the Oasis machine readable standard CSAF format, Oracle expects such 
organization to be able to automate such filtering and we know that many 
customer do filtering by processing CSAF machine readable documents.
> If so, maybe someone external should start doing that... or someone from
> Oracle on one's own time... or people with the individual projects
> (e.g., someone involved in MySQL and someone involved in VirtualBox
> development)?
I am unclear regarding what you are requesting.   Can you provide some 
examples.   I would note that security vulnerabilities and associated 
CVEs are only published in Critical Patch Update and Security Alert 
advisories.
> Related to the last point/idea, I notice that the individual projects do
> not appear to include security/CVE info in their release announcements.
> For example, here are the recent ones for MySQL and VirtualBox with no
> mention of the security issues/fixes at all:
>
> https://dev.mysql.com/doc/relnotes/mysql/9.2/en/news-9-2-0.html
> https://dev.mysql.com/doc/refman/9.2/en/mysql-nutshell.html
>
> https://urldefense.com/v3/__https://www.virtualbox.org/wiki/Changelog-7.1__;!!ACWV5N9M2RV99hQ!OoHnj0vkzfVsOz2w-yZyUPG_tE06u7mGHbIT6M3zp4jbsWBZ9jfxUG10LiMQUMRdy4vQckczaUtFCUc6rJp8$
> https://urldefense.com/v3/__https://www.virtualbox.org/wiki/Changelog-7.0__;!!ACWV5N9M2RV99hQ!OoHnj0vkzfVsOz2w-yZyUPG_tE06u7mGHbIT6M3zp4jbsWBZ9jfxUG10LiMQUMRdy4vQckczaUtFCYMzrXOJ$
>
Security vulnerabilities are announced in quarterly Critical Patch 
Update Advisories such as

    * https://www.oracle.com/security-alerts/cpujan2025.html

These include CVE and CVSS information.    Vulnerabilities are not 
announced until
all supported product versions have patches available so that 
vulnerability fix information in
one version is less likely to be used in successful attacks against 
versions that do
not yet have patches.    Also, we like to test dependent versions of 
batched products to
reduce the chances that vulnerability fixes in one product will lead to 
incompatibilities
in other dependent products.

> Maybe that's because the embargo end is coordinated centrally for the
> Critical Patch Update, and the projects end up never being given a green
> light to release the info on their own as well?  Or just do not go back
> and add previously-suppressed change log entries?  If so, could this be
> corrected?  Just guessing here, I could as well be wrong about it.

The embargo end is coordinated centrally, as you suspected.

I am not familiar with the details of patch delivery in MySQL vs Virtual 
Box vs Java, etc. with
respect to identification of which CVEs are addressed in specific 
fixes.    However, in many
other products this mapping is evident so I expect the same is true 
here, as well.

Bruce
-----

>
> Thanks again,
>
> Alexander
>
> On Thu, Jan 23, 2025 at 06:47:29AM -0800, Bruce Lowenthal wrote:
>> Olle, Solar Designer, oss-security list:
>>
>> I am responsible for the content and publication of Oracle Critical
>> Patch Updates.   These are published quarterly in three formats: Tabular
>> format HTML "AKA risk matrix", English Language HTML format and Oasis
>> Standard CSAF format via references at Oracle's Critical Patch Updates,
>> Security Alerts and Bulletins home page at
>>
>>   * https://www.oracle.com/security-alerts/
>>
>> This home page references individual quarterly reports and provides
>> other information regarding our security program.   In addition, that
>> page provides instructions allowing anyone to sign up to receive eMail
>> announcing when Oracle Critical Patch Updates and other security
>> advisories are published.    See:
>>
>>   * Instructions for subscribing to email notifications
>>     <https://www.oracle.com/security-alerts/securityemail.html>of
>>     Critical Patch Update Advisories and Security Alerts.
>>
>> If you have any questions, feel free to contact me directly.
>>
>> Bruce
>> -----
>>
>> On 1/22/25 11:50 PM, Olle E. Johansson wrote:
>>> Bruce,
>>> For your information.
>>>
>>> /O
>>>
>>>> Begin forwarded message:
>>>>
>>>> *From: *Solar Designer <solar@openwall.com>
>>>> *Subject: **[oss-security] Oracle January 2025 Critical Patch Update*
>>>> *Date: *23 January 2025 at 03:42:22 CET
>>>> *To: *oss-security@lists.openwall.com
>>>> *Reply-To: *oss-security@lists.openwall.com
>>>>
>>>> Hi,
>>>>
>>>> Once in a while, Oracle publishes what they call Critical Patch Update
>>>> documents, which list many vulnerabilities addressed across many Oracle
>>>> products, some of them Open Source and some not.  This is great, but it
>>>> would be even better if Oracle also communicated to oss-security about
>>>> those vulnerabilities in its Open Source products, perhaps one message
>>>> per product (e.g., MySQL separately from VirtualBox).  I hope someone
>>> >from Oracle reads this and will get the wheels moving.  Anyone?
>>>> Meanwhile, the latest Critical Patch Update is:
>>>>
>>>> https://blogs.oracle.com/security/post/january-2025-cpu-released
>>>> https://www.oracle.com/security-alerts/cpujan2025.html
>>>>
>>>> For MySQL, it says:
>>>>
>>>> https://www.oracle.com/security-alerts/cpujan2025.html#AppendixMSQL
>>>>
>>>> "Oracle MySQL Risk Matrix
>>>>
>>>> This Critical Patch Update contains 39 new security patches, plus
>>>> additional third party patches noted below, for Oracle MySQL.  4 of
>>>> these vulnerabilities may be remotely exploitable without
>>>> authentication, i.e., may be exploited over a network without requiring
>>>> user credentials.  The English text form of this Risk Matrix can be
>>>> found here."
>>>>
>>>> and links to:
>>>>
>>>> https://www.oracle.com/security-alerts/cpujan2025verbose.html#MSQL
>>>>
>>>> and lists additional information on some CVEs not included in the matrix
>>>> itself (duplicate or not vulnerable).  With so many CVEs, all of this is
>>>> rather long, but I imagine someone from Oracle - or someone external -
>>>> could copy-paste the "English text form of this Risk Matrix" and the
>>>> extra notes on a few CVEs to a separate message focusing on MySQL.
>>>>
>>>> Similarly, there's info on a couple of VirtualBox CVEs here, which would
>>>> ideally be a separate message with copy-pasted detail:
>>>>
>>>> https://www.oracle.com/security-alerts/cpujan2025.html#AppendixOVIR
>>>> https://www.oracle.com/security-alerts/cpujan2025verbose.html#OVIR
>>>>
>>>> Perhaps there's more Open Source software listed in there, which needs
>>>> similar treatment.  Not only this time, but each time, please.
>>>>
>>>> Alexander
