X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2728" "Friday" "25" "May" "2018" "15:04:15" "+0300" "Evgenii Shatokhin" "eshatokhin@virtuozzo.com" "<7c124869-2387-dac5-2a26-deda05e18ede@virtuozzo.com>" "75" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052512:04:15" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       eshatokhin@v May 25   75/2728  " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>" "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6142 invoked by uid 550); 25 May 2018 12:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5856 invoked from network); 25 May 2018 12:04:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=virtuozzo.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MUPLmUCk2poB7Hq8UDha/I/8R8es52uQnBihAVS1QyQ=;
 b=elZdyNn++AIH5ayp1hLG2AGFyK+UPV8BRCPia1jEhhmMhtXxkro0kFaDq3ez5uDRtAOF5UxXzRZi1b52KILO5sVwy+uNvw0ycSySs6J9rDEv4N2z+uIXqkpz+KKWu7pHbZoMqnoDCobGM7q+bKeP418gmEudvvWHMgtLzwgQbNM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=eshatokhin@virtuozzo.com; 
To: oss-security@lists.openwall.com, Andrey Konovalov <andreyknvl@gmail.com>
Cc: Vladis Dronov <vdronov@redhat.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
 <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
 <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>
 <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>
 <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>
From: Evgenii Shatokhin <eshatokhin@virtuozzo.com>
Message-ID: <7c124869-2387-dac5-2a26-deda05e18ede@virtuozzo.com>
Date: Fri, 25 May 2018 15:04:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [176.14.114.175]
X-ClientProxiedBy: HE1P190CA0057.EURP190.PROD.OUTLOOK.COM (2603:10a6:7:52::46)
 To AM5PR0801MB1699.eurprd08.prod.outlook.com (2603:10a6:203:3a::17)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);SRVR:AM5PR0801MB1699;
X-Microsoft-Exchange-Diagnostics:
	1;AM5PR0801MB1699;3:sv3gsJgk1UPuzxJG3TVf2aTWvEAaVO4V4DaFiWNO76P/eLV/WRJGWfI20Y5t94RG6tmMZcUkvUhlJvQqXuMnM9Q68D6rOgNtfgfzwK5bUXwfPR/zTeE0bAoskH8UvyYCRdHX3qXC489Heu/sME3pPFTJGebaHPlk6HdOXkEJT8Mu/SYRIG7PJ0jTGj2LSNzfRawbJSBECtnfQPkLm+VKGcHrtfx8sUachU+bDX9Yiq7c8UNWCkAItPGP39Fget9W;25:TQ8yblBrFjKfd+fXnSP7DNa78jYuFeV18mr0ujxUVjkvjyuSq4FVfpSooVnofAD3h5glK9j1POrYl7nBlfFdHMTIbogEV2nPNtjp2RtkuS15qP83NkayPBG/JlptqBxIE/xCOqaTl2cZKcDDTm1oPBLiFVmxA1NCXhgieby3eA5+/GtVbzhGJF4W9SyBKYvZgbCobux+/0MG9T5QarhQDIdLc6dmrF35jwjyLxeXKOJJQi/wo0CoEaUpca7UfD6nBXVP9d/JHTUjYAhtzCJGMGQdSfiTlZpq1K2AV2bkcTr+ry1dQUVNW7WSGB6XM6c0f8ozb4hXCjvgu2CZP8X3cg==;31:Be3QJ6CzKVruiG1SFK4+KPjqBmzghQpIO2yoSQszCrwNRxi8FwzUJhEKLgpIdFw99i7L/uhZol7F0WRw/SR1P8N7XBwNZY3vT0B6dqSXnVH5lGV0h8ozrOqJm0PvXVnkMsn9upMdXXQaOIwjtz1W4tmRDbPaKkt5GbnstamS+wZQD5QCafQrO8CA4P/Dnyuz0tFyzrhvwW1qT3k3YWvYHq1QsD11bVg+JSldcY4fH0g=
X-MS-TrafficTypeDiagnostic: AM5PR0801MB1699:
X-Microsoft-Exchange-Diagnostics:
	1;AM5PR0801MB1699;20:v2ts3Ra2Iq8bJyRogZeegWCMRMFmuSKjLsrcHUph1vB7OjJIgteX/oSlvCad2o5qxBXSIWLQgYFafFhJ6cnOYuqHuYiSR6gVsjrN6xIcTbERYH4GLN8hk28MD8y40MCEo3ZoBuPBB/q8vBeNYeb+QYyyNpLCPy6v14O2FsC58g/gWhz9ipmoiReRR7if8i3Sq9uHY5cz78x5J7cn1Rad96g+mBKamb4koMPicVaruTjRUPlJB/4jNdPu8LCzFsgCCjaYILepFvGfnYtXvdqZsj4npKzO5w7vA0hXp8sCHicv4oYjkrWTiWHPpW5IDHW7YrsVHkUEXTeiV+cwSuLPJlq/Oywos5UjiI+z4eg/ypyCk0I3Aax0FayZNTXud/6mv6kv0Rhdwuxyn+WbOP022VuAPctUSWSGsbJWCMb91juXbrST1Bm+S4g2XfqXboWd71TGzGxIj7xshWONlbEicou1yG+OGiZmW8xcYN87eoe6gVz4ennI4Atwl8gZrfgu;4:/yUCAq13rDQjISlYdn9/18UPR8WHv684vWZyw0muaZHWPSBjHIsaf9skINs6CtcSLUaffSXKBo08HTkoC7LJ5BKXxCpCsC4WTDyXxqb2ideYzZ+0bL6FRJnF5QSEWzvib3XP5utpqOYSZtjKpLqVeXKuG3cGSX3O7iamW6ezWVvpOwa+e5PWpbuKP8AlmUkgaxdakNPPSA4x+xfn5t2+LC0vcfdXhs/G8+MIHQEU+/FX6aaXcwdLCiIcehg/DXkmPaOMLOKYy0mPYmch7XZ5CJ9o/szz8IqAXSad8DlqL3M/yk6lnAuDENqX8AzSM0BsYxrRVnfsvbpO6ozcTC56LmBgNNMm5eyapGb2b+gOCos=
X-Microsoft-Antispam-PRVS:
	<AM5PR0801MB16996D4C366753DCCCA85F0BD9690@AM5PR0801MB1699.eurprd08.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192374486261705)(85827821059158);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(3231254)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);SRVR:AM5PR0801MB1699;BCL:0;PCL:0;RULEID:;SRVR:AM5PR0801MB1699;
X-Forefront-PRVS: 06833C6A67
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10019020)(6049001)(396003)(39850400004)(39380400002)(366004)(346002)(376002)(189003)(199004)(68736007)(77096007)(15650500001)(26005)(67846002)(97736004)(31686004)(4326008)(186003)(16526019)(105586002)(59450400001)(93886005)(2906002)(106356001)(6306002)(230700001)(117156002)(5660300001)(65826007)(3846002)(6116002)(478600001)(47776003)(66066001)(966005)(65806001)(65956001)(386003)(36756003)(6666003)(6916009)(53546011)(8936002)(31696002)(316002)(1411001)(50466002)(86362001)(6486002)(11346002)(53936002)(956004)(476003)(229853002)(2616005)(39060400002)(6246003)(8676002)(76176011)(25786009)(23676004)(16576012)(52146003)(486006)(2486003)(81156014)(81166006)(58126008)(52116002)(7736002)(305945005)(446003)(64126003)(99710200001);DIR:OUT;SFP:1102;SCL:1;SRVR:AM5PR0801MB1699;H:[192.168.0.101];FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
Received-SPF: None (protection.outlook.com: virtuozzo.com does not designate
 permitted sender hosts)
X-Microsoft-Exchange-Diagnostics:
	=?utf-8?B?MTtBTTVQUjA4MDFNQjE2OTk7MjM6cGNGYmJpNnFVU0hQMFk2OTZlV0t6Uk1o?=
 =?utf-8?B?cDIwMENlaEpjeHdOQnQ4Qm9KVjFEd0toYm1NWnRiUjh3MHhQZDNiQTFVeTV3?=
 =?utf-8?B?bUZCeGUrK1drNDBkRDdPVE9CL1oxek5CMHJib3REaTFLdER1bVJZM0pUeHVB?=
 =?utf-8?B?UFB4MnYzYmFadllicnhuZ0lOSDFpQlNIR0NlTTNTQ1djZmgwU01qSzZocDZL?=
 =?utf-8?B?K1p0NC9mQWRIdjlMdmxoTFRSTTdzQVVlZ2pzV0lHNGNDOEsrQUptU3VLRnU1?=
 =?utf-8?B?dENxVkVoT2hmSUdtNTc0ZjJ5OGROdDNWckZGRjNaQnd5eFZHdERwRXluNEln?=
 =?utf-8?B?bHA1WnpzUlBUdWJxMW5tVHZlNVA4TnZnVmhwaGo0N2doaWJyWU11L2NDLzY0?=
 =?utf-8?B?ZnZXQ3pqa1NyaEd5SjJrZlB2UEVoSDEvbTFPLzNxUThZUlNqR21lbktwdDZz?=
 =?utf-8?B?N2JuYTJ3U0dZd2dnSWd0ZWNDa2JESFJGQzEyL2Z3b3liMk5RU1EwaHVQaUJz?=
 =?utf-8?B?RmEySDdTNFI5b1kyeW8wVTdNWVdhSWdnSjBnSkM3UFluTFZwZExXNWtGK0xV?=
 =?utf-8?B?Ymp4NTYxaVRLRTdjSGdmZ3BPeDR5RWp0NnpWcUhuRWZaQ2Z4Z29jOXpZR0VP?=
 =?utf-8?B?cmd0anlRc2R4UE0vUHQ2OVRvbGtyVUtKMWJHSkxYTDMyc0QxMkdPNC9MeWZm?=
 =?utf-8?B?UTJwTVhiN0h3SUFld3lWd3p2ZmdwQ3Q1ZCttTWJ0MUhIRDNVSXFUMWRzS09k?=
 =?utf-8?B?eWR4VzAyNzEyZ1N0eUxlU2VvcnJTU1hoWDlnKzJhNXpPR2YwL214M2t4RWFu?=
 =?utf-8?B?ZU9NaEFTMlo5eVJwTS9mcG1jYmk0SlBrSVAzMUx4ZG5oMjBmQ2VzTS9MVnp1?=
 =?utf-8?B?eWRuZDFDc0x2MHVmTHZNTko2Q2M0Z2ZHU2tKaHNsN1gzVlJ5Y1FWczNmaDJK?=
 =?utf-8?B?OGdlUFJPTzU4M3Qrb1k1WWpvVzlJZFdBY2FVWFdtTHQxaTc4Kzk2NlR0S3pC?=
 =?utf-8?B?NDY5ZE94Ynp4RDVQK3h5bEh3L1dJVGpPTFBnLzhGRGhCL0pnTi9tR1lJMm5P?=
 =?utf-8?B?K2xwWWxreEdTbGw2bEhVdnRuUitCUWJ3Q29ZRE5HTUdZc3NSdFFLZGFLZEV6?=
 =?utf-8?B?aEtnWUFvRkg0Mi9tNDdvZG1SVkhGZzZIU1o3Z3NMdVd6dHdmY3Zoc3I5ZU5a?=
 =?utf-8?B?emM1OWljQ3Y0MmVCMWI2dFpudTNKTmNlS2tGcE9PTlVpYjBLTC9McldTNlpG?=
 =?utf-8?B?elFqU0lsUGs0cVFhWWVGdGxFZ0NMT3Z4bzZEMjRPUXlOTndiNTg2ZFBLczdy?=
 =?utf-8?B?RWROWUF5aGVsS2tzc0VZR2IzVHBDV25ZN2xxcDBvUmkwdzJaNTQzb3RCVVFO?=
 =?utf-8?B?TDFTNjNNTk9qSklCVk5PcmlQYlYrWVU4S09xaWpDMGFscExNcEpjMHlEejlw?=
 =?utf-8?B?OWlTREIyK2RRT1lML2RRVHFEWGdwRzEzS1E3aG0xVHR4ODQ0VElqK2FNaVJX?=
 =?utf-8?B?SzNZNGttY3RIZUt4ZVk4T1hOWVZCcTBpR1NDZ3hhdzdtOW5xSng0UUFyZFNn?=
 =?utf-8?B?RUhzN3h2NjR3RFkyc29aNkhFV0U2Q3dTcUhSWjRyUnRkRCtXOThoVE5CbDJQ?=
 =?utf-8?B?WWZCeUwrTGlNVGdTbWFtRGl4SDR4ZzgxQklTUGtnKzlTY3lIUThMejE4WWFo?=
 =?utf-8?B?c0crMnFjQkErZnFLd2NxZXpya2w4RDhqakNCcmtsQUtZb3hCZXJzb0g0VFcr?=
 =?utf-8?B?VGs4d3ZaVWFYQXU4U2ZUUXZjVmxrT0JFdVI4V29oOTBIS0l2c0oweW1HdCtQ?=
 =?utf-8?B?NE1XU1E4T2llOFF5dXNkeFl5UW1YL0dDa29PUWFiS1pFL2ZiOGFybnZvOUxm?=
 =?utf-8?B?dmtiRGlXcVFyMkFjdkVFMUZBbFV3cVBabkIvRHJ2dVlPVzNPa1lPTTl5cWN4?=
 =?utf-8?B?NE5wdUJFZjltZ1J3YkF4RDVlNnBOWXVtRWViS2hKMzRlcUlnWXdjNnhJbWV6?=
 =?utf-8?B?a2RnU0xtbmlvUFVXSzJtQ0VLR090c0F5aGhZelM2cnM4aUlHVTNEb1hmb2No?=
 =?utf-8?B?QUJJaXdvMW9KcDVVSU5iZlRRNlNxbjdWT3hyUENGRGl5cmV6bDVjTjlZNXIz?=
 =?utf-8?B?aVRKSk5vcHQ1U2NQeVJXbS9mS2UxTDBhcTQzWm5CbytUUXBMOXFJekNtREJH?=
 =?utf-8?Q?U9NQHhX4LFk+DoyZIOKqelLlHrPQ1hzOvgRvaGOhnBm8=3D?=
X-Microsoft-Antispam-Message-Info:
	FDxN6yOEq+/TUrLiEJRM1ZYHHZQ/E6dRr6YraKw7uqv6ULe2oyXBv9wxuqhAaMctgjyf73QE5UTnU9Cbj+HdhjwllvGvpCPEmKvbyZ8wk0JLkECEm6IGSNcKu3D4kXRNcI4m3JXfzOJkv9vN3C1q6vE5H3HNl8G5GMAy4k2uISWSN/5N29Y6Pxy/if7bXoiT
X-Microsoft-Exchange-Diagnostics:
	1;AM5PR0801MB1699;6:ljKoZzq64ApGj6kCJTrW/A8z3k0XJ0phmWhmNEUNZ4XLuzQImDcGHX5RwniBo52KXxHmCE9u+MNorO0Z7BW8fidfnQxzX8zJDIorAG6VsvuLg93APrZNYYK5CqJ2LvJrp00M8WcDKdO0/WfOPCtot0p6/O+qS5AUrpmehQxX3axLNVNDp/EpkhfsAq3+EPuWnPV91vIgPDnlo3d7OVOxuawZDtIbS+ok3d6uc/f7nyw8P0q+VDw6to2cLVZ11RLIbCAPfAZYzXsh1Er4A2fFxbrC4RkNcbZBK59g1Ktm3qVHI2tn02PtYqVQhgKS/juxXgUpku+DCQLr2PPhZALKdFcZK2NtzEJFevtqAn0QRQCnTX5gau/og+h3agUM6LV8Qd/aE05Fn4WsmuhfneN5d8RDJo0TCUn+ilii5Gv3nwwxCi+IEhxi0CTKY4FOQQNGIkRRBExcuPB4bKL2k1bXHA==;5:I8J3pOxzhV2vboF+ZaJywDTjILl4eM1YlgaZeiUOBQOGxzHlbdMyNtdUpb+/izKj+V02Z1ZUhy6Hfsz3gKUUFy4BPXvP20CouQNTTtCh4jHs3vG0w4ZVHEcuCXVR3mt1DCsJY1cxtnvfWzBHIKAmDRyjLRou7FfHcxnAw2q3zUc=;24:bqQZwulT7oJNDzNKCXEkGWK1xfibzHKi2hd1FZ5RFS5lMFTu2ynMN55gY1MVdie9zcvUs/TLxIhAsqed+vIxG3yB27YTKVg9tutd5t1kovo=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;AM5PR0801MB1699;7:O7piqT7Uo53f1QM04uLXoCUxU2JMA+ZQuc85P0h+r6OJAuU4myTKl1E2xgT0TJY76Smehd5FxKZ7O7L8F0SxuxemX4ddwnhmdajsVXjcSahcGZb33ukqqDSExA/3u/CvmvKSSNtGBVkVvSoLHei/xhPWdTlWuN0ur07M/BPJAAqIUwJlKS3t7eGTeXcwovfV4GrY4QkXgT4+lTCnGsx4NIrU0b2gOmW7xMCs+oMDHTl+GUsg9JgDUoYscabrkuy2;20:96pw7rxk+7eK23RDCRrd2uZNCdcl7Y2DjAxGNPPapfuKCqqnc3xjbFQmXNQQXTobiy1ScArIL6cm0ijWipweD4AzAV/cZk8qmp0Qj9/GhXRVAiHyxUkDl7b3o/F6x7cxNaLLS/1zSJKgkqedhVC7k+YJ1B9QtHNiFM7sHp5nsfU=
X-MS-Office365-Filtering-Correlation-Id: 0678ad4d-fde8-47da-797f-08d5c237a56a
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2018 12:04:19.3095 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id:
	0678ad4d-fde8-47da-797f-08d5c237a56a
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB1699
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

On 25.05.2018 13:48, Andrey Konovalov wrote:
> On Wed, May 23, 2018 at 4:57 PM, Kurt Seifried <kseifried@redhat.com> wrote:
>> On Wed, May 23, 2018 at 8:49 AM, Andrey Konovalov <andreyknvl@gmail.com>
>> wrote:
>>
>>> On Thu, May 10, 2018 at 2:05 PM, Vladis Dronov <vdronov@redhat.com> wrote:
>>>> Hello,
>>>>
>>>> A null pointer dereference in dccp_write_xmit() function in
>>> net/dccp/output.c
>>>> in the Linux kernel before v4.16-rc7 allows a local user to cause a
>>> denial of
>>>> service by a number of certain crafted system calls.
>>>
>>
>>
>> So the classic CVE statement for this is "does it cross/violate a trust
>> boundary". Yeah I know, not super helpful.
>>
>> In general when I look at something and need to decide whether or not it
>> deserves/needs a CVE the fundamentals are:
>>
>> 1) Can an attacker use this vulnerability to gain access, additional
>> privileges, basically is there an impact to
>> Confidentiality/Availability/Integrity? This is really two tests: is there
>> an impact, and is there a way for the attacker to trigger or exploit it?
>> That's a CVE.
>>
>> 2) Does the software/system make a specific security claim that they then
>> fail to meet? E.g. "we include a firewall that blocks access to everything
>> inbound except for port 22", if they were to then also allow port 80,
>> that'd be a CVE.
>>
>> So for the syzbot stuff mostly what you need to determine is:
>>
>> a) is there a security related impact?
>> AND
>> b) can an attacker trigger it?
>>
>> If both are yes, then a CVE is warranted.
> 
> Hi Kurt,
> 
> Perhaps I should've been more clear. I wasn't asking "what qualifies
> for a CVE?", but rather "There are a 100 bugs that qualify for CVEs,
> how do single out 10 of them to actually request CVEs for?".
> 
> In particular, the 100 bugs that I'm referring to are the bugs
> reported by syzbot (perhaps there's even more:
> https://syzkaller.appspot.com/?fixed=upstream) and the 10 bugs (or so)
> are the ones Vladis announced on oss-security over the last few
> months. I'm just curious how did he choose those 10 bugs out of that
> 100+.

If I understand it correctly, Syzkaller programs run as root. Therefore, 
it is still needed to check which of the bugs it has found are security 
flaws.

As for this particular bug in dccp_write_xmit() - I stumbled upon that 
Syzbot's report and checked that the bug was exploitable by an 
unprivileged user if dccp modules were loaded. Then I reported the 
problem to RedHat, and they desided to request a CVE for that. The 
problem is not critical for RHEL, by the way, but still.

I don't know, if the process was the same for other bugs found by 
Syzkaller they requested CVEs for.

Regards,
Evgenii

> 
> Thanks!
> .
> 

