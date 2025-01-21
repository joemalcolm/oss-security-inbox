Received: (qmail 15740 invoked by uid 550); 21 Jan 2025 20:52:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15686 invoked from network); 21 Jan 2025 20:51:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=628kOzAd8KKaleca
	4KuRyJGR2vhUEnEDrw9Eaw4zcqM=; b=kFSgH1WgLe6ZLO/yuw57e/gXlb47KHm/
	NpjFH0KfkgSlT7M2HywG4mTp91wr6WhoUTrFmrW4hBEGzXs76/NmukL38dAaZlTv
	I/rXOZo+P57f31NCYvS8WtiTr2FM4bfymzdr72OmQHzwA//UQ+m3t02JD/KFowQR
	FTp8XjLu6VBL8VaKCXFR9xJ0M1kqDtKNb0oDvU6nlEkZerUqFtRPaWacLXQdC2vd
	mJTlRilbR7DK2wMiuuO7kyG9GKxyU1RAciNo+uhyEbDxPF5uQl/iU57Re7X/hdsa
	juGQvVmAHfi0tsV5alt4w9PqjfB3jjNzAbY8YDTHiZZ6AsAX7kNKSA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X9vGPnakOt3gkDIQpl9n9StQCGA249kFsHpfYa3Llr/ECFxYIfMa9xPOkLKWv5lnZ0UPleL48wrVVq/2AJCcupzomX5rCI+ZgkYs63JKldqynHGSs+TXljj05Pp+bEJCVyhMXG4OlqGLFf+J+N/8FnddatxeuUn1rps86SpDTlvE++4iPgOEw2DvPor2gfwoetmFBRyTfB8q7KF5puKu+tzuqMH1UAbJum+2jyKkIp3iXcz1R/DAG+MwiGFdVUaP01kOo7tKlp77nj+LMNyHS3Wv34mJPnXy4oA3fl46FTUvdLj98CfcG3Ic/z5AouecKEQjlk6OEwCbN8XC3g3s0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=628kOzAd8KKaleca4KuRyJGR2vhUEnEDrw9Eaw4zcqM=;
 b=wXSGZGqilNqyRCCGTYp3FSoxV7/luJmb6075CfjGN9yETpO486UlHVoyOrGxJSqmTeH4qxD/VTXVFEi4LfB9qlnZr2zdXFUDwnkHA8X0gv28PjGPavtOqmpaoMYSphQEQCawgFNyfG6OyseJWNkJuQ9Uu6IktsiHO9wQhFJSHeO9KXnOUuQ+x80UPKQ4cfulsen9J5qpqh9iHklmUkJsJSLsXSWbdqxT7Ibn1OyV3jZqd8fDlfMXEwcXVD0ZNW9o++aK5sqJimHKki2/PK7Dp2UqheGDZG5AS75dzV6bZwL+lCFJdWrU6z1TdaFN881IYgQ0y8zQ2GgT9dofRhtrUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=628kOzAd8KKaleca4KuRyJGR2vhUEnEDrw9Eaw4zcqM=;
 b=KKn4l4bWhEXZjIva19fkJejvwBJg6+rN979rKDvh0AuILa93hl+zdcpywgBqkueDN18gloot/coeJTaXTt/Vtg7VDS1TYZM7PhH9dYqM5gxjeraJVu2/F6ox5phiJ4TiYg22Ydc/DLJFj7LE6MMEBAxWEVvGmAYUQ0N2P6za6dI=
Message-ID: <8e576567-21d3-46cc-be09-ac9e0403d18f@oracle.com>
Date: Tue, 21 Jan 2025 12:51:43 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/nZ1KboV9G
 q5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2gEQfPiyBw+trIppWF
 RV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdEa6f4uLqoNHP+m4yYnzapFuMD
 /R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx98qUR473l4buXjHgDkkXXlHqdzil1vK85
 PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwVPb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5
 vR7PdjM32ZJCN2+aM4dYfNzQxQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJv
 GAENBHSH1QjpZMJGCTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLB
 ido3DtAETbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w
 ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsKCBBMRCgBCAhsDBgsJCAcD
 AgYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBEoZPAbTXnxnD6TvC6L7nggfLRMOBQJkQs2eBQkn
 DNS0AAoJEKL7nggfLRMO1esAnR4FVD60BpDY/bJp5RC1VXhOVlo4AKCJgsQeVeGLxDlMuhAm
 bcCkOjafqc7BTQRGm/pvEAgAmnlpSWGjmtSGlLqKTuymwBAU9G7Jw8ow27QngXS/86g/PTzm
 yhXzK0uPgeoIaTZlqaHWNKCWJnC6T2btXtaDHH6cElrClYNf94os5sSt8PBDh184W+NtctAy
 Y2dA1pQYhYs8/eXwa4E4cyrrQG75M+CHrbu9Se0vlERARCpNcjNYLpTXRCwNuUvAi905VJ0Y
 XnGX83WbJfNIq+uxnBa2gVzwb2/2FwKOG03Wyb1vs6NznWJle9x61y8/LlEDoBRbfIQTFp51
 R0ue8gX2yMVgh8lYVViHYCBq+cat7p8X41Xa/fN/HfBFPsf3/+bhggNgmaBmDJBxxd6BPB8Y
 EireiwADBgf/UWIxQwwRLkiXPacOoh34MJYQIBTrCC8gVFxetlbEPEH5mueZMJegAPTF52l8
 6REenxdNVz/0xT7BD6VlHHY5DowlbRca4W8eb3gpkX/wfNYDYCHtTifT7ewumTrNZx5mrbNk
 0XTJVOPAP3z7E0rVD2w/xo4p22DzIwfeGKwpHqt1b6Z9fmrRDwaiXaFmwUf+rIiGc/OFcOSe
 46HwTmIyTOt6NVdQSf75jOPbdeM/n1I5svOdWTLEj6QEj2q9UQ98UEPJuMdaotyBFwKlcDOO
 LMSL793fWINrYSskdXhHjaht5wWqI+egO2JfciI/vP1+bEzhpY9llGq+r7WG3nCSf8JJBBgR
 AgAJBQJGm/pvAhsMAAoJEKL7nggfLRMOgugAoIdhGnD9d/IS6fDVgv+4xnOXvyohAJ0VVxc1
 uoPzepWFbgvLuHIMvyjRog==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:a03:254::29) To BN0PR10MB4997.namprd10.prod.outlook.com
 (2603:10b6:408:12b::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR10MB4997:EE_|CH0PR10MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: cab5207c-5496-4652-390e-08dd3a5d6ac0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?LzRJb1JqTnJSWEFHdnkrK1ZlenNVUmZad3RPdlZhOXkwdlpxZ1R4NzE1WE5z?=
 =?utf-8?B?Nm5URzB5dzJQYzNKQWwwZUQzbXZ2andFWU9PaFFsZkd3K3dCZ0ZLcy9LSGxx?=
 =?utf-8?B?Zm9aTU5sV1JUNzhyVHFuZlZnOWZBWW5velVjT3dUK0N1eFhPeGg0T203YW1n?=
 =?utf-8?B?WWFVcW1HWjJteUQ2K0Z0OTREaHdGdUh2M01ocXMvMWFBYzA2UW9ZL0RTc2U3?=
 =?utf-8?B?U2xySHNrdjRYb2FBK0NmbnEzYUlkalFVUWxtZGNEbjFUMXprbTRaMnFKaEt5?=
 =?utf-8?B?OStJcU44bnZRRWpCTVNPclVnby9nYTViSFZjUEE4NnN4aU5OcnNFL0dPTjBw?=
 =?utf-8?B?MjFFRFAwNTZhZnlENjlCTzJBSzF2aVdqVnd6TzB6SXplblRBUTJtUGNuandE?=
 =?utf-8?B?cWovU05OSGthbThNT3FZL3l1dHhYbkFvQkY5L2F2bmlqOTUrNHZtc282Mno0?=
 =?utf-8?B?S2J5citnZ1ZERFVFalAwNnI1N1NXRWUyTzJ6UWNoSDBtMFV5cTl4cTBqWWF0?=
 =?utf-8?B?VVp3NUVpZnR3Vm9KaFk3MXlpQmlnTVlRemNmTHRKZ2hjczRuUWlHRjRoN0Iw?=
 =?utf-8?B?bk95Z2dmTmZhV2FwVmVOL01wbXRBSHlNUytwaFRBNHQzbzN0RWxwWC9EZ1JD?=
 =?utf-8?B?aFRGUkE5SW1OREJGcjVuK1R1YldWeW9uS3ZMRzJ5TDhFTDU5eDBkVnFWdTdr?=
 =?utf-8?B?ZUtNMEJkL3JJQW1BNTJyc1dhamxrTXlVelQzSklBTUllOFhVdmhZNHdINjhU?=
 =?utf-8?B?VXhlVTYreUpKZFJNUVFjWDF1QUdBbmc0YUVqOHNlaEc3TjJHU2YzeDdpcFlq?=
 =?utf-8?B?T3lUbDB0WWJjdHRqRVZicVM1Q2lIWTdDbEtBNFNIaStYSkNPNTE0d0RIMTll?=
 =?utf-8?B?bi9sWFZVUElHWVdob2ppMFR3M2FHRGhIQzBCL1luejFvNmhhZkxnbFJmRk81?=
 =?utf-8?B?RnQ3QUZmenF2czVZVVNGenNNNzIxVTJBb0x4dzM1OTQ2TE5XNU5temJ2aHJt?=
 =?utf-8?B?K1o5c28raHhDSFdtZlhrZXdDdGRJdVpsYVR5OEh0dVg4dUZKZmVIdCs2R28v?=
 =?utf-8?B?dHo4blB0TU5ZN1c3c29hNWdyUjdLdnZDRmVsZHB6NDBPSHRIcXhSSkRQcTEw?=
 =?utf-8?B?MlQvOUc0R1ZiUDBCYUpJYnNvaVV6Ym1oRy9pQXB5Rmt2b2d1MndhNVNIZWJO?=
 =?utf-8?B?cTVoczVwcjJWTitwZ3dmREtxMEF0RCtEUEJMWkRBeCtJZ01oRjRHUTE1dThJ?=
 =?utf-8?B?bHNiMGJNN001bHFvMENYZ1ZmSFhLT2dVa0JFQ1VKbkNKUVFBTEttbTk5RnFD?=
 =?utf-8?B?UUk0QnVWSzRxVm1FUmE5YjJyaGdSYlpoellnbmYycmtrWUtBb3NVdjBXeEdL?=
 =?utf-8?B?WmM1d1ZWbm9CaDFqQmJQcGlaYXJ4VzQ4T2VDK3dWam1BQ3ZyblM0VUZYQ0xs?=
 =?utf-8?B?YVMxTUtsSENOaC8ybUVWRWl2a1hteDVyM0swMGFRS1FjSTg0Rjh5b0t0b3VC?=
 =?utf-8?B?eEpETGNWamlFOEJ6ZGVjVm9ETXp3VS9hWUd4Sk5zRTEyaGx6UzkvcUt6UGY0?=
 =?utf-8?B?YkN1ZjRmU2VOd09iUlo5Qlc3WTR5SFJGQlcyNjNpanB5TGtEU1B5YnZwZndW?=
 =?utf-8?B?alMwOXB3K3dmbVNxWkowOHhDQ0o0OGREZ0VrRlR6d0JWZklNTDFQZzFrZHNR?=
 =?utf-8?B?RW95aEZPZlFCS2I5V0ViZFJJRnUxWnhRcGsvcXVhV0hraURUamROODNSZkZI?=
 =?utf-8?B?RDZQQmJKd09odEYrQTFhZk0yUlBoWVhkMmRYYVJmYjR1MzVJSVpTMjhpbmhv?=
 =?utf-8?B?cEJ2cFRkbWYzdDJBeUJjUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR10MB4997.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZEk5LzBJYVdJNVJTeXc0ZWk3Z1JFbUwzcUY4a2w1aDJBdlA2aFFYUWR5alVF?=
 =?utf-8?B?TGZWS1lxRHNKK3p0U2VBbEtMRW5md3k1UXZLVk5KOEI5cTRuaDZlZGJDZ0Z3?=
 =?utf-8?B?bjRVbnZJbjMyamxpZkdoTnlCaHk0dGVNaFhlR1hucWZ6UHBwcGJ4YVhrbHBV?=
 =?utf-8?B?UG8xNHRCNFJoa1J1U0N6M0pEd0hic2p6TlUyT2hHL015bXJya1N2OXk3dTlR?=
 =?utf-8?B?Uk01Mzc0eVExUTBxeDNXaVNNeTBDMnhEUnRHZ0FVM0ZBOVNKMGNMSklUK0RW?=
 =?utf-8?B?RTlVVnoxUFpLa2FOeFhOZFUvZHFxLzRuNTkrb2pqMkpEUHhKdXdvenIxUjAv?=
 =?utf-8?B?bGswOVVnQXZxWnp1SFBBRnZLS0tMcDZ4SEtVSmRJc2tMZThFc3E1cDhHSnpk?=
 =?utf-8?B?NkljUTFBR2FZVFB3YkwxaXJ6NWFCa2JTc2VOYjdDY2V3T01oaEsvT3puOXBY?=
 =?utf-8?B?VE12V1cwK3lFODdmVzVNTWJ6c2lZd2xUUG81MFR3R1cyK3lKMWNENlhSVFh6?=
 =?utf-8?B?U0pDbXE3OFZqL2JSbEJET3EvUXVsTCt5bVhaMXNtdmVvK1gvcEFtd2NTRm5Q?=
 =?utf-8?B?ckJwN01YTnBkMCsxMzRLOStQOXhLb2kwSGJoR1hzdWVJOEdyOHNoVVVha2p2?=
 =?utf-8?B?bExTYVFDWTBpMXc4RUovdVE5V2ZkeVIvSGYySkt3Wi9KS3hUUlp4ZHlnUlVV?=
 =?utf-8?B?ZVUvRHFJZDdCWTJnREdiaU8vYmZOdFpZaFFWMWNHbGdIV2VWeEFFeHFwSVhR?=
 =?utf-8?B?OVBVT2tRc3J2YUlOMHNGamNRSmluQkl6YkFYZGQvaGd6eGJWVWt2OEZ3L2lK?=
 =?utf-8?B?QzlXSGFuTHhKSW5nU2Z0TzVpKzZqOUhwbXMweHpBaU1oYkIvaUdLOThibDg0?=
 =?utf-8?B?Um9pM1pyT0FxekVYSUZ1M1NxaEpQUHpZQjA5VkNNMzl0aXpKVTNSRDJNclJX?=
 =?utf-8?B?U1JnT2JXSHNCamI5ZlUzdXdjVzh4RDdUUC9BeCtTc1pCMzJ4c2R4MCtPdkor?=
 =?utf-8?B?M0tJVnBqVjR4K3ZKdDhNVzJGbmVCVGQzWFNzZXg4amcvd0ozN3RNYXhvVG9a?=
 =?utf-8?B?SmhyQUJpUWR5RlhxcTNJZzVvR3NLNUE0OG1TeFo1MGVSQlJiVkxhK1NHdFdS?=
 =?utf-8?B?ZXZCZzhmN2MvV3lqdU5VRTgzbEh5QzE4azc2K0dRY3RFNS9sQmlwNnFYSUJq?=
 =?utf-8?B?emNtQStCT2ZiUmJzWEoreUFhWWU1U0NVNkw4bnVad2V2WVlLeTROc29KbFA5?=
 =?utf-8?B?YUtLK3hvUlFIZDk3TEdteG9RbUZZbXpWRDdDYXRKMTQwdXd5Qi9SNXNkM3d6?=
 =?utf-8?B?V2Q4NnFTNm1hQUxtalUyTDUxM21BVmdjdUpwdWkyY0NrcmJHWlpYVXhRa3ps?=
 =?utf-8?B?R1JKUFJwSXY3NHgwelpZaFUvLzYwaGRCa2NOY1R4TUNmZnVsUzgzNkdlaHIy?=
 =?utf-8?B?MTViQi9ZWTcrOHVYTGttckx1bk51TGNiUG53VHNqYjRrdHFhQnRCdm94NWFI?=
 =?utf-8?B?REhxYi9uWUZrM3R3RGZJUTVYWm5jVGM1TWxTMmVyQjhZLys5QTZlMmVERWNa?=
 =?utf-8?B?b09IOHJJV2pDOTN5M3JMeDdzUWlQQitMSTlUR1hGZ1hEVGU5eXNPV0Y3elFY?=
 =?utf-8?B?RzVENXZxTks2MXFrbEZvcmxlVFZxRkhwbjZOdDc3M0tnK0FSTStuY0hWbUxs?=
 =?utf-8?B?VGRGNkZjRkpoUGpVOWNiMDdOell2RmFmeC93OHBHbVhlSVVoZTRmU1pNVFN1?=
 =?utf-8?B?enEyRTh3UlZOYWJqTFg1dUFkVjlxeDVxUjhvMzR6cXp2a2lRVGlhYWpxMnk2?=
 =?utf-8?B?aW5JN1dNKysxbkFpZHRTUk9HSUFlaXpNZHdiQjlkeUxqajBVNFJlYkx4bnZM?=
 =?utf-8?B?TVUvcnE2eDk4bzJXWHN3WHE5RUhYcEg1TlVVYXdFSG5SRUladFVFYlNSclcz?=
 =?utf-8?B?Sis0M2p5OFl2elkyaVFYOVp0Y053RHdnTjBtcDdQMm1pdGQ3WGYybWl0S1Fm?=
 =?utf-8?B?OGY4UG0wV0xPVUtGL0xRUW9tR3BzLzc3QzhrVWhUMy9LbGZNcXZqS0ZpTzkv?=
 =?utf-8?B?emNobWxTUVVyL3J6MlJUeFVLd0lDdU10VDQrdHF6LzJzT1k0c3NPZUFCdUZh?=
 =?utf-8?B?MmhWaUFabUhHTEF1ZkNoOUE4Yks0YUZlNVEvbGVJSWVVeEVaMkFWb3VTTXNE?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	hDax4ar6YlZq3SotJeqFEXsDDAqZYfcmfpRHYhu08bPABdTrxPQTUg2JLIR9nmE7J0vlokCYRRla45CMil8mQ3AIW2fsrfmMIq4C+vttqF97mkcpMvtrAiljpBGiFiy0XJyy3porWHyCwqL5FJAWap2dKAQ0LyUSvaf0kNV0x1xT+SZDIApu8q6ZsXxUGlZtBbmO6Ti7ux2TtXvh/6eAAj6jZlJRWTxFbCndfbeHq45AABAzEf60ieWshM4MuBxpHM1bJrriyU2rgP8ukpGLACDLHuNqrwZ1m85BeU8/2ejatexRONy0V4VNqI/YtuPu6VUFV/JN5NTGceUnUZFZGwf1flgu3GG3H8NRCLSyK0csdRF/WbmqbPDJDsNjKbgb/rAe3qJYEjxtq+97t4ZjJ94Lzn7h4kU0tqU4ZPYURpQ4MxguF094+cii7K7nERD/xgbtRjkv0ORK+/64GCmNYFOhRcg6phZTp321tfTJNjGd479tLKyfXOdF/c7Yxc+fqOvFdQ2N1iTzS8Ot8+BHO0r3x0oQAGfml8aaFWJ7w8DTpCjScP2LaYnmm12NPvG6bck5ki6qNhsUPwkueMUN9I2+sCpBF4vcRAMiNRbFj5A=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cab5207c-5496-4652-390e-08dd3a5d6ac0
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4997.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 20:51:45.6020
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jGxsmkS2smmjTrcRDbnxBx515fzjlh3nj38Vj3xfHeztOnBCbOEv1v5hGO3yXnh9FZmikjZR9sZAaFxKPTXkl/kUQfymkv5ILLHsqYdEbkg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB4940
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-21_08,2025-01-21_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2501210166
X-Proofpoint-ORIG-GUID: 5KX-0Td4eKV7zRLJjHtmjNMVLbxZ9L7T
X-Proofpoint-GUID: 5KX-0Td4eKV7zRLJjHtmjNMVLbxZ9L7T
Subject: [oss-security] CERT/CC VU#199397 - Insecure Implementation of Tunneling Protocols
 (GRE/IPIP/4in6/6in4)

https://kb.cert.org/vuls/id/199397 discusses 4 vulnerabilities in the
definitions of tunneling protocols, which may be implemented in Open
Source software, though they don't list any open source implementations
as affected yet in the Vendor Information section.

The CERT note currently states:

> Vulnerability Note VU#199397
> Original Release Date: 2025-01-17 | Last Revised: 2025-01-17
> 
> Overview
> --------
> 
> Tunnelling protocols are an essential part of the Internet and form
> much of the backbone that modern network infrastructure relies on
> today. One limitation of these protocols is that they do not
> authenticate and/or encrypt traffic. Though this limitation exists,
> IPsec can be implemented to help prevent attacks. However,
> implementation of these protocols have been executed poorly in some
> areas.
> 
> For the latest security findings from the researchers at the
> DistriNet-KU Leuven research group, please refer to:
> https://papers.mathyvanhoef.com/usenix2025-tunnels.pdf
> 
> Description
> -----------
> 
> Researchers at the DistriNet-KU Leuven research group have discovered
> millions of vulnerable Internet systems that accept unauthenticated
> IPIP, GRE, 4in6, or 6in4 traffic. This can be considered a
> generalization of the vulnerability in VU#636397 : IP-in-IP protocol
> routes arbitrary traffic by default (CVE-2020-10136). The exposed
> systems can be abused as one-way proxies, enable an adversary to spoof
> the source address of packets (CWE-290 Authentication Bypass by
> Spoofing), or permit access to an organization's private
> network. Vulnerable systems can also facilitate Denial-of-Service
> (DoS) attacks. Two types of DoS attacks exploiting this vulnerability
> can amplify traffic: one concentrates traffic in time
> ("Tunneled-Temporal Lensing"), and the other can loop packets between
> vulnerable systems, resulting in an amplification factor of at least
> 13- and 75-fold, respectively. Additionally, the researchers
> discovered an Economic Denial of Sustainability (EDoS), where the
> outgoing bandwidth of a vulnerable system is drained, raising the cost
> of operations if hosted by a third-party cloud service provider.
> 
> Impact
> ------
> 
> An adversary can abuse these security vulnerabilities to create
> one-way proxies and spoof source IPv4/6 addresses. Vulnerable systems
> may also allow access to an organization's private network or be
> abused to perform DDoS attacks.
> 
> Solution
> --------
> 
> See the "Defences" section in the researcher's publication
> https://papers.mathyvanhoef.com/usenix2025-tunnels.pdf
> 
> Acknowledgements
> ----------------
> 
> Thanks to the researchers Mathy Vanhoef and Angelos Beitis of the
> DistriNet-KU Leuven research group for the initial discovery and
> research. This document was written by Ben Koo.
> 
> 
> 
> CVE-2024-7595 GRE and GRE6 Protocols (RFC2784) do not validate or
> verify the source of a network packet, allowing an attacker to route
> arbitrary traffic via an exposed network interface that can lead to
> spoofing, access control bypass, and other unexpected network
> behaviors. This can be considered similar to CVE-2020-10136.
> 
> CVE-2024-7596 Proposed Generic UDP Encapsulation (GUE) (IETF
> draft-ietf-intarea-gue*) does not validate or verify the source of a
> network packet, allowing an attacker to route arbitrary traffic via an
> exposed network interface that can lead to spoofing, access control
> bypass, and other unexpected network behaviors. This can be considered
> similar to CVE-2020-10136.
> 
> *Note: GUE Draft is expired and no longer canonical.
> 
> CVE-2025-23018 The IPv4-in-IPv6 and IPv6-in-IPv6 protocols (RFC2473)
> do not require the validation or verification of the source of a
> network packet, allowing an attacker to route arbitrary traffic via an
> exposed network interface that can lead to spoofing, access control
> bypass, and other unexpected network behaviors. This can be considered
> similar to CVE-2020-10136.
> 
> CVE-2025-23019 The IPv6-in-IPv4 protocol (RFC4213) does not require
> authentication of incoming packets, allowing an attacker to route
> traffic via an exposed network interface that can lead to spoofing,
> access control bypass, and other unexpected network behaviors.
> 
> Note: CVE-2024-7595, CVE-2024-7596, and CVE-2025-23018 are considered
> similar to CVE-2020-10136 in that they highlight the inherent weakness
> that these protocols do not validate or verify the source of a network
> packet. These distinct CVEs are meant to specify the different
> protocols in question that are vulnerable.
> 
> For reference: (CVE-2020-10136) Multiple products that implement the
> IP Encapsulation within IP (IPIP) standard (RFC 2003, STD 1)
> decapsulate and route IP-in-IP traffic without any validation, which
> could allow an unauthenticated remote attacker to route arbitrary
> traffic via an exposed network interface and lead to spoofing, access
> control bypass, and other unexpected network behaviors.
> 
> References
> 
>     https://datatracker.ietf.org/doc/draft-ietf-intarea-gue/
>     https://www.rfc-editor.org/rfc/rfc6169.html
>     https://datatracker.ietf.org/doc/html/rfc2784
>     https://nvd.nist.gov/vuln/detail/CVE-2020-10136

See the Vendor Information section of the note at
  https://kb.cert.org/vuls/id/199397
for the latest information from the various implementations.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

