X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1249" "Monday" "21" "November" "2016" "16:56:13" "+0000" "Scott Gravelle" "scottg@imprezzio.com" "<5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>" "21" "RE: [oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins" nil nil nil "11" "2016112116:56:13" "[oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins" (number mark "U       scottg@impre Nov 21   21/1249  " thread-indent "\"RE: [oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins\"\n") "<d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>" ("<d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24182 invoked by uid 550); 21 Nov 2016 17:46:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20401 invoked from network); 21 Nov 2016 16:56:30 -0000
Authentication-Results: spf=pass (sender IP is 76.191.123.48)
 smtp.mailfrom=imprezzio.com; lists.openwall.com; dkim=none (message not
 signed) header.d=none;lists.openwall.com; dmarc=bestguesspass action=none
 header.from=imprezzio.com;
Received-SPF: Pass (protection.outlook.com: domain of imprezzio.com designates
 76.191.123.48 as permitted sender) receiver=protection.outlook.com;
 client-ip=76.191.123.48; helo=mx1.mail.imprezzio.com;
X-IncomingTopHeaderMarker: OriginalChecksum:;UpperCasedChecksum:;SizeAsReceived:1205;Count:19
From: Scott Gravelle <scottg@imprezzio.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Multiple XSS vulnerabilities affecting five
 WordPress Plugins
Thread-Index: AQHSQlL/DGWP11odoU6XPUf16y+CeKDjq3Xg
Date: Mon, 21 Nov 2016 16:56:13 +0000
Message-ID: <5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>
References: <d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>
In-Reply-To: <d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [198.169.97.226]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-IncomingHeaderCount: 19
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report:
	CIP:76.191.123.48;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(189002)(13464003)(199003)(54504004)(377454003)(229853002)(5890100001)(108616004)(3846002)(2501003)(2900100001)(102836003)(5250100002)(23676002)(626004)(6116002)(450100001)(33646002)(54356999)(76176999)(24736003)(8936002)(9686002)(15650500001)(92566002)(50986999)(307094003)(50466002)(8676002)(7736002)(53416004)(7636002)(356003)(106116001)(6916009)(87936001)(2950100002)(2906002)(47776003)(106466001)(107886002)(189998001)(7846002)(86362001)(246002)(305945005)(5660300001)(38730400001)(110136003)(7596002)(7696004)(66066001)(2351001)(7099028);DIR:OUT;SFP:1101;SCL:1;SRVR:CY4PR03MB2647;H:mx1.mail.imprezzio.com;FPR:;SPF:Pass;PTR:mx1.mail.imprezzio.com;MX:1;A:1;LANG:en;
X-Microsoft-Exchange-Diagnostics: 1;SN1NAM02FT008;1:+/B5QNX/XFbFzN1gg0quBi2MLiiIyr4b/6KUMLuCdON6sLnoGcaCgjuJ0JzWgNs74VzNcqlBKcpjPqj+qxJBvA9U5t27Am0l2HKrzLrpcu73tQhZeQyhvOXbtMF58Nx5ase8Mz8n1ZwjCg0Roxavbn35kmv6k3QxQyS1zL17+LL7fKRYuf5+5oJajsuaTf69PREjz/EXmuxDYuI+DwW47mU4mZ7+Yyk8is/zgXQRLAm//iKNKghCdoWpgBl0jCre8QOPV+nSdnMn5Rc3erQ8kBAc13xeRhpiGGilctabd2T7KKtWZqi7H32Ivcf7L1rLsT/gOpKzATANZV42siCgQPbj0OpiDM9mjSDkFj723dvTb6FvvypxZ3gT4pgfoEOIXHxZvWAzSUVAqjnyldi4KmVE0JPQd4+xWmSe8xqEokl7nxe25tw0tPEURlo3hKemF0vHo6lw2awMQSyhFo51Lvl6eauVH8vbgwfWwKXj/ZokwRRNj/WdK0o6dtO3i0rPgTcD2y1lYGl1u/1B6zb7f8YU0SH/MjxbUiNv4BxVqLhYMlUCFgTtMIy542A12mSAu/7Np3BpOuIng+Qbx9s6jw==
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR03MB2647;2:MK9CvuZob+jonTVkp6YAbbVef9dNvkFBMmHZr2TuoKGLhXxWvDV6qM/FsYoy2i2s0o7aammuxctjDNHc9WkWHy8AoPfI/9xXWzDfztH/9SHvxwhlfLQ44eXikKjqnGknjJsMAfX6/ZlYcgzqG+04bzAbwFM4YrXWnpIED3k8r8k=;3:LewFmYTZUQe4OEul23LOpMK3vWJmRls466zeAZJ+wOqUdzaQ7WTj26DfJmOwoMWMWcOUrlz+iVPqzZAuIv7T2wM29n+a1y4zde52fZjF3oNmInHT3lPvAZaz9NzfqXseCsNz4hvoHdN3oaO4fejUPYrX1cFK4rw+7+/LjEoSQkqKt7beJ6qqRs8BgcCZVzZjiU/Gtr5Nop/omSgsRBhngX34EeysJfqMBg7BouImr27ZG6JSL77K0jOVZOdy2hLlGEGqS55g/ps6O2RPMyc/V73cpJcCo1wFZpz4iI9PEKQ=
X-MS-Office365-Filtering-Correlation-Id: a6802b00-58f7-4996-1b4c-08d4122f4e9e
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(22001)(8251501002);SRVR:CY4PR03MB2647;
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR03MB2647;25:DJvOpMe6gGJ0fZulCZWqckr9wWRruRSLh7/dfH4YBFUHPo5qH4CpliJVsaL9tGXl/aAX3cRLCh+DIvwV0Nqeypdn07X2h87eICl2inNlUelJmhgNA5uwBoHhgxTcqTmcgImHK6q33VckD38RBjAs20gEzdDzRYxL0hQz5gKlaIu5RvzqAITmHskMeeASZsM0i37qJCmSqV37Etu36kX6VhGJCDVVyA1pvjqJsPjAVSyiS1F1CbCsqTCv/22YO0xsA9A1HpCi6lrBr/pRJQrv6ulShGCX/nnO+WuEiM6b15U6c5+N6W/xG7y/TQsd01d+t98b0qj2iMYIgM8qlXhuZZdTQEQ2L7t/CntCDkhlmTCtU1A+y7mGMmk/K8pkPIQ0HIJdQzaEjg42cM3IuE7TlNJixzCtHl6815oUl6cNRoBg80SuJDskD1psA82abWgtNdHw/a662RExoria8y8ccH5pBiL4fCDyCbm2alekUsDZw+radWnjYyk0Zv4kRwU3Pv2F34co92b5iQHTPDKJoOUvxvo9syK8CQ9zv3lq1Wi8PH6izslygtYqiBZLfTm8ifopTj7wDIYC1Bg0lmtFuruYtCo/lbAzvx+cjN8DZ0E38A3SbtOUw9mW67ve/1LM3k+OlTbOm8HRAXtSMZdm/LawpfEs4/PyPujo/c6/3dqAiJto7UiTk0BOraBUEY0FZQ0rhzQxySfElywCXGORRok1F9ys0a+mWNMfMQftuPAlJJMCHKvISR6pCap/aA90iNvkZQ9wlt0HCyd6IQ/NvNTc2c/ub4B/IIm/gaVnmf34Q1P/i0rcHs+xPca+OdvIbURgxF0fNs3be9NvrCkjIppAvcVXquQg36f/4i4nQ0/TyqkXCHnRx+px5dgVXuezFLfHOxO1KvEOR3itYadl6BNpGJtFqZP+gkRh8hwNyNTn41NAeNI7aaQKCBngSVeB
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR03MB2647;31:1pCExZ1/a1uzJGPNJZeQbQCfAVQCrlSObT2ozbYawz3zrB07GMHn97spcuE/BN3QtrhSByPZmfNhEzBwn1Kbchn2bPfue5oeWivjJdqweV1d3MrXPJdc7yDH68Iab4vRnOQ8wwk+4xQp8u6LRgb6eJgOsdGRPspnQ8dILEN6KBRgVj+O9Uqgy0iE/R74/674k+3jjprG9h+KQGEPhD2frHXNDFXL/Qqq1/y14WndsNogmiMUNp+VOYUnY2RRkRyo2vTocgUqZfi1N9xmXNclzw==;20:JIHqLQZsiLkcKTN1YPCFAgjcTsDRbncaV57NBUSl+gLVLwBL6m+xGzUF5Rzr8jcA6u4mbKCl2dAa0VJYpoS9qDvWcr1aBvYbhCpVjGz17kp8ZuNnBPkZ3Q1AqRVKmeNVpCgioFn+dG/6aeHtZdrvsX90u3ytsYisUBoJGnPukJ/tUeqndhiRCqwGfIBdc6/nA2vDisZ9uLwfEWGAznL6rxmjEWjll5hwCGtP9CnLKu/WIydIJyhKtgRx3AZZxsXhCzkMRtyvEkOzpWHL9zGECEMy+QjdOLnMR941HdyVHNOIXrqd2L/vFPe9gY99c8gP1miYbIyTPjUVSrdolJwKB7N0DSxTOOvynGr0rmPY5wqOvbnfhnaSRu+EALufI15nvyfSZyrws7r44peNfVjhtiGuPvz31dALJ1rAIPVUP/cukQX/MWkJ5i/rIhDosdXDcdSccWOWfPal5zaocLglEeaIZ+y7p4lEuhjEfPANCAT/pfgnBP8ctUdZc8zO1xb1
X-Microsoft-Antispam-PRVS:
	<CY4PR03MB264702511DA2B33679EE4CA7C8B50@CY4PR03MB2647.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192374486261705)(5213294742642);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(6060326)(6040307)(6045199)(601004)(2401047)(13023025)(13018025)(13015025)(5005006)(13024025)(8121501046)(13017025)(3002001)(10201501046)(6041248)(6061324)(6046074)(2016111802025)(6043046)(6042181);SRVR:CY4PR03MB2647;BCL:0;PCL:0;RULEID:;SRVR:CY4PR03MB2647;
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR03MB2647;4:2PYswpWdpYWZE4z8gZVAMWz/zRqUyeRLZfzAvUFDvmx5F7zaHJoBg36ieIvW5uJ0mGR+TiHdthvx/jCvcSYNS8W0frsHt/gR24Wh4Txoxx1UVXHjvoeMAXxmwSFvfvqUXPILRXLHb613T3RefiNSjLPuKjhHO2vbMBDCE9eJBUzuM0HJqD4/61l/3lZZBTtfshcV9nkr0yTI3tqZ4i27WXr3YHvY9ku6RRXkrBjnVtILimMgdsP3nQ5Yl/x4COTewxvnbzp1HnPacPQ3qhJubyGiclbaQz8a7l24bnvaFkb8TQd9V1FnJkOPHX7AlS5vDkavWssFR6CiRUaow9JFMzetluR0ZH9oFxpAGzC0tYYX29RqjHF3HRlAcOicsY1HHWP7pbmtZ8SQHhCojLwZWWmzvo8lKr3R/toQKtDs9Dfs4IROHr9mB/brivMCZ2A6CqXKsdNnGXGcEZHMDg3aaQMR/EKbBIbAiEu/8a3+XLO+c/NGECzloLW8ZvcjTcosZEdca99nWKD97WJss7ceurAylJr0xK+HRxA7hBd4phv7bKQD5zPdaBPNlesNhbbtrzxnXEoe5jXMugFy2PPnZN7cJytoF7AeivDSE8hNhsPzBZbc0UMn2b4LhxpA4lVwKRK8J4zsXQVpQmevBziGrjKTRPGe5HZA6lcxDWx8//5lqBawdmb8PzhAHCAGAgFGVxBmXPvGYYWjzXLznDorfQEMvmcvb4JKUjGQmm+8UNI=
X-Forefront-PRVS: 01334458E5
X-Microsoft-Exchange-Diagnostics:
	=?utf-8?B?MTtDWTRQUjAzTUIyNjQ3OzIzOmxkRWRKZXJtUks1Yy9qUzFvbVlnVEgzSnVn?=
 =?utf-8?B?MjdQZm5Fbmh6NGlsNWxybmZOL2hobzI4Q3JRU2JUVGo4dFQxSjFGVFNnWG1M?=
 =?utf-8?B?WFZVeW1XaXozN09UdTBYRU9GK1V1clFNZmJMbWJUME5xZXFxU04rbFFmNndK?=
 =?utf-8?B?ZlFVZGd3V2NnQ052UldpYkczL1RBSlhFcXBtU3lpV24zWm13QkhEdFBLS2o1?=
 =?utf-8?B?Y1Jwb2lzYlV0d05LdUJVZnhGcmUxcXVpeXVSWVVlWVZ4eDFFRGRXQjk5cUtG?=
 =?utf-8?B?a25jdlZ3bXNwZTRIa1RCZWJQWnpHdGI3b0RmdXFpL2N2UVBCUTZzWWRtNkFG?=
 =?utf-8?B?S0dnaUtJQ3ZNQjBZZUVlTUozcEJ3M0hEb3FRcmo3cUY2cXUvZzdjazZhUmJX?=
 =?utf-8?B?NGVpQ1paNTlLVlVRczNQWm9EcmpONy9vQmVOd0YyL21WM0lPdktGQXJFTnNO?=
 =?utf-8?B?TXNudHRLcm96ZjdsUFVrWVRQVEtiZGRzcytnak1xMVg1ZHRPYVdZZmJCdDFn?=
 =?utf-8?B?RjVYT1IySjFUVXhTTDNTbE53R2NnTFhWaEN3eUl5WGhtNFBzQ0s2aldxdkh4?=
 =?utf-8?B?cVE1amwyOFZqemw0WXRwNnZmN2oxb0VncEx5a2JnaHhoeWUvS2hyZXJBdTZV?=
 =?utf-8?B?MUxMdDg5S1h1WEtoV2xCMk9GZ0gvZE5sTzNzd1RYYmpmNUFUWjE3b0ZDazlI?=
 =?utf-8?B?LzdlWlBPRDYwcTQ2dENLNGMwdW9VTGNJb25JamlJK0crWlZnaE5EZERxZnlk?=
 =?utf-8?B?NzVGN3BCenJEdXUvZ1hTWGNqcWZJSlJyc1ZkeXlNdTVMbVNGbk1NVEVtb3lo?=
 =?utf-8?B?RVA3bzR4TGZqOWdwbDBaSWRkTHN4bWxrS3RpdDVsNGt3YVhNTVh0TWl0L3VG?=
 =?utf-8?B?MWx2NmZJMUhxSlBSdGdmUms4M3RhaGlNaXVMcDUvWDNLSjRwZnJXalhBeXI4?=
 =?utf-8?B?RmxobEhFMFcyNGRsN2czWXhUanUvNTYvdTk3VWxCTWNocTZUQnc3Z0JaM0VB?=
 =?utf-8?B?U3pONkd1ZGgzUmxmY1BuZ0xzcktaOFloSHQ0dkl0ZzhiWVJzdmpxcmRPM1B1?=
 =?utf-8?B?bHVGS2crdUlwYmx0cVBLY0F6UWZmb1VDbFRQWVBhQ25XNmgvTm5jNEFlVFZ4?=
 =?utf-8?B?UVZlRWxHZUtZNVNvQjlVRXdhMlZMQllvVTNFcU9RYUh6Z0FsR0plWUNheXFS?=
 =?utf-8?B?MDhMUjRJbjBIdWZLb0NxWnhXdUFISnZDaXJxdE5ldWV5MzY5L3ozOFZZUkNO?=
 =?utf-8?B?bURWVzlUbTV3K0ZNM05hRm5IZGFMcFVGUkJyamxES1dpRUJNdXBrWEdZTGFx?=
 =?utf-8?B?ZWpWWVA1dGl4blphcm9SZ3IwN0pkN2NaZnl5dmYxZnZ6eVV2ZlppU2srYkNO?=
 =?utf-8?B?MXNvK3BjdEpiclFKcWFSL0gzcGg5L0lZc1FiYmtjZjBtNTQyUkZyYjhBMHlX?=
 =?utf-8?B?b29wNzNlOUhiSjlBQ0pGNm1scklxdVRQSHV5MjQrRGFMT28yeWhNendnM2RH?=
 =?utf-8?B?SFk4bjJmakgwbkFBNmNMMzczeFgzRnhZSXlCRlN5dTRrTkJDdlRJNXF3dkxC?=
 =?utf-8?B?RTVHUkRmeS9rRGJiVTlRVDNBYXlkOGlLdlZaRmF1bXFXNEpRTEhvVTRQdTAw?=
 =?utf-8?B?ZVNpVzl3bzVob3RzR0k0eUltM2RtVndjMUhUTUk2ejFqUVY0OVVvYzdpTnpB?=
 =?utf-8?B?WCtKN09SZ0x1OVl1Y2E3c2RVVHRlNkM4SnpFYU5icW4xWWkvYnA5b0FnU2F2?=
 =?utf-8?B?MDA1M1l1ZnpXd3I2V2p4b1N4b0FkeU1MUjJuUDRjR1FnL0xHSStLZVJqaU95?=
 =?utf-8?B?T0J2TktqVHZaRnFHdXVBeGpkb1JYT0VWVEZ5VnJxd2hLNGc9PQ==?=
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR03MB2647;6:GRfnOgc76iWkBLfU8X7Tyr7/XuEjPDmxyyNyLQXIcZqb+i+B/yF+iYivDQUjMCvZEwJYp+93TwmGP/gKfbGy7g3+aMVgTnAsCn+Xpl8YIuLlRU00EDaI6EQ2fzPeFuMDOu/aqkXWa6h2GLhknTmtsHa/d3MdfCmhisMD6rVPta3BhuG9ol2A0DDNAUobk9eNM5nBN7gNEit3Wpvm+E45lfI2v6agFN3UQ9Lp6jCf9VCmEM1s4DFKG/ggQxTQFydEER0/JrPuMstRxo+cv3DGkQQCf1JQOz8J+8SDVgLLOQ5j75oJWy0UQP9JfbflN9qQQZMVeDViwSwW54h//lQrA9uW880sz+rtSSsqn3BOEahK0Zo+hP0JUgrnOPZ6cXUV;5:tKhHBCRGd7QmcHXbEI6J4H8lNFapNiXvX10dBbPxgE37TpG36QlmJfH3U+7luMGCUQLElYlJE04vLtLbl0ft+/dbJ/Wmv9w/TtvcuI0naOnH8kfthTrGAjCvL6OhBulC0QuCcwkOJRqrVX2v6Gq0YQ==;24:7dRxmh8F8SLtZcElJuOrW1gMxGtqVAK8Q2ZTDBWRGR6zwfGBf8gq7aPvHhkAAK41oOVmLERyU+mFdbGcyv/EUlaCbm0bIIGF2dW7k1RKyfc=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;CY4PR03MB2647;7:5dhqK7pF8Tj/XFt31xPbeI8h6N0ZkcGpLvcSXOoY8JFaUtNvjrS9vPYQuuBmOa7EFl1AAM122bH5eSjAGwcNAyI8v1d1HOQcS061wMXmVtuKHSqJYSOFiZl7Ws6g5gEhwpllZiI5ydWHEGlqvsA6GDDh0E1NDmH1NPLyDiEjAcxj7ZsxX0hSHcyFj2MjO7/hS5cWAG8YUgTX0/bpQtXvxiWvui7MFJKR86KqCHPDGYj3eMriKJp/OXxDGCqBY6+iJ8h1f/7NtmrILHe0YP+yfcBCq+GmTKwOrdy6Smy1vDVd9kgHk/40t1MpLtI6jzWzOAHQIV0O67KIEhqOFMD9SqT0+3wIazZVl0oiTfpy2v4=
X-OriginatorOrg: imprezzio.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2016 16:56:15.3767
 (UTC)
X-MS-Exchange-CrossTenant-Id: 8e37e6db-2039-44a8-994a-f671edd83a20
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=8e37e6db-2039-44a8-994a-f671edd83a20;Ip=[76.191.123.48];Helo=[mx1.mail.imprezzio.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR03MB2647
Subject: RE: [oss-security] Multiple XSS vulnerabilities affecting five
 WordPress Plugins

QW55IHBsYW5zIHRvIGdldCBDVkVzIGFzc2lnbmVkIHRvIHRoZXNlIHZ1bG5l
cmFiaWxpdGllcyB5b3UgZ3V5cyBmb3VuZD8gIE91ciB2dWxuZXJhYmlsaXR5
IHNjYW5uZXIgZG9lcyBub3QgaGF2ZSBhIGZlYXR1cmUgdG8gZmlsdGVyIG9m
ZiBPVkUuDQoNClNjb3R0IEdyYXZlbGxlDQpJbmZyYXN0cnVjdHVyZSBhbmQg
U2VjdXJpdHkNCg0Kc2NvdHRnQGltcHJlenppby5jb20NCjg2Ni04NDctNDUx
NSB4MTIxNw0KaW1wcmV6emlvLmNvbQ0KDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBTdW1tZXIgb2YgUHduYWdlIFttYWlsdG86bGlz
dHNAc2VjdXJpZnkubmxdDQpTZW50OiBTYXR1cmRheSwgTm92ZW1iZXIgMTks
IDIwMTYgMjo1MSBBTQ0KVG86IG9zcy1zZWN1cml0eUBsaXN0cy5vcGVud2Fs
bC5jb20NClN1YmplY3Q6IFtvc3Mtc2VjdXJpdHldIE11bHRpcGxlIFhTUyB2
dWxuZXJhYmlsaXRpZXMgYWZmZWN0aW5nIGZpdmUgV29yZFByZXNzIFBsdWdp
bnMNCg0KUGxlYXNlIHNlZSBhdHRhY2hlZCBhZHZpc29yaWVzIGZvciBtb3Jl
IGluZm9ybWF0aW9uLiBUaGVzZSBpc3N1ZXMgd2VyZSBmb3VuZCBkdXJpbmcg
U3VtbWVyIG9mIFB3bmFnZSAoaHR0cHM6Ly9zdW1vZnB3bi5ubCksIGEgRHV0
Y2ggY29tbXVuaXR5IHByb2plY3QuIEl0cyBnb2FsIGlzIHRvIGNvbnRyaWJ1
dGUgdG8gdGhlIHNlY3VyaXR5IG9mIHBvcHVsYXIsIHdpZGVseSB1c2VkIE9T
UyBwcm9qZWN0cyBpbiBhIGZ1biBhbmQgZWR1Y2F0aW9uYWwgd2F5Lg0KDQoN
Cg0KDQoNCg0KVGhpcyBtZXNzYWdlIG1heSBiZSBzdWJqZWN0IHRvIG5vbmRp
c2Nsb3N1cmUsIGNvcHlyaWdodCBhbmQgcHJpdmFjeSBwb2xpY3kuIElmIHlv
dSBoYXZlIHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBpbiBlcnJvciwgcGxlYXNl
IG5vdGlmeSB0aGUgc2VuZGVyDQo=
