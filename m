Received: (qmail 28489 invoked by uid 550); 18 Nov 2024 19:06:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28462 invoked from network); 18 Nov 2024 19:06:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=8f62Imhil+EoKiPL2nxtJvPpujREwidRkB9Ols6HPAM=; b=
	mcYpoew1E886MFChlIbK7KvZtjkgRFeofgHSR3FpW8t+e1HI2pC5xCkmzKh2CzaJ
	Qr/Uk6arTPiACzuJCoceJn7pu3aQnh9vrXJI46ILbd478Wa1wewenghNfWx67d+/
	8fRMpQZiJYYWgCOaBhIoi/e3fcP51zV0N1XkYzRknSjFa7+K7O9b99jh4VN/zuRP
	wLjWkf37NqTKa+VTrAxzR3JRQ6MI6oEkop9+zgPtwx+ZY/XRJO8w8sda/2INlTGH
	knEhkS4ykQhifGsXMyTq+7O8EXy3tGw3ybe/xeGO9zPLTXsAJJEdxHi0g8iDhU0P
	AnqW7cU6CuxzUzM8D6vhrw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uhfOLeZXWN16oOOErI/LerqVn5vbsDXlVh5YwMgE9K/uqtO9MjZu6F9SZOdEpvl0jvq3WmNd3DeKyi1CTXXz1InoUOHWo2me7A2wVfcpaBIpyiw5t6rOCcKy4ZJR9Stzy5Ji3l6RUKJyoIBjscNQDNSx+omYlPkRW4idZxvv/12DA6aWyX2AazIE0Vo3DIJD+BRzkwg4Itr6QtRuVb9BjFI6lg8cllinBabTj/P/WJSOPWsOHQjS1DtTA7mydhicTr7LLF65aqA1PrQ0FaYuTUYC6AlytdpDjwQhbOqsENGKI6qKyuxKj/OTajUnl+il2qxl1/BlUP5oGKzj1lqx0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8f62Imhil+EoKiPL2nxtJvPpujREwidRkB9Ols6HPAM=;
 b=VcJbRT+RKW8g+3n7Rhu2cuR6pYsiPNABavEn/JA/l6/3wV4ntav9edqqHWu7GfaCeXl8m5Pa0x3bppH40EYqkXB2/abIjoFG1LDuIAHKLsND09GLjCvASSLcq3Wy/6J8cvEmIfVAmH31vTCfqy81V1ql5syLz8HkimygNrnrQblqHuAlWmc5q5P8s6jltWx4UxEgdr2NJVAU8QycyNrTfl+yhtDjhfS7FSGFN+czNR+ORJ3Ly4KqCG/55G46/QcFqYLEXRRhrRazJVhNv0Hshx8id9v+mcyNryMa2LjHlWgxktbO7ilReqycp1US+jnbYz3ex502m1xDZzhmtOgekg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8f62Imhil+EoKiPL2nxtJvPpujREwidRkB9Ols6HPAM=;
 b=lhqteeuIoaVMQh6GS06RNhpzVfbzORE/rw5zG1rPpUh3Eoon2bjA/8wRh4Pvi3X9+OKGJeKwvAN0ZBOEC7vJLjvSuH5qjoFk1ymgMU2Ll4zd2EAGh8RdzMd4KkS0ckC6qMU39IwSwaz0doOk3LvJINyzAOPo/+Cp4UmKRAIVCGs=
Message-ID: <80e97dca-79ed-429f-b041-355db8f3be72@oracle.com>
Date: Mon, 18 Nov 2024 11:06:36 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <2c2e8268-da46-4925-adb7-890d1ae7a9ae@gnu.org>
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
In-Reply-To: <2c2e8268-da46-4925-adb7-890d1ae7a9ae@gnu.org>
X-Forwarded-Message-Id: <2c2e8268-da46-4925-adb7-890d1ae7a9ae@gnu.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::10) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|CH0PR10MB5049:EE_
X-MS-Office365-Filtering-Correlation-Id: 1713ee6f-92ac-48b4-d34b-08dd080420a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z0drdEkyd1JHRW0zdmwyQzRYQ1lVaitzZzdpOTBQMlZwZlVmUlpRS3ZUOHlX?=
 =?utf-8?B?eHBkQzRhVUFaQkl4UFhPd3N5QUVoKzl0c0tqYmNsdXBsV2RPQWVKK05mdmxJ?=
 =?utf-8?B?MlYrUzRVeXZiR0Y2L2xNbjJlWjlUd1g4dThWQWdGWW55R3J3dDZJOCt2Yjh0?=
 =?utf-8?B?dWtpZ1pVZHpEcWxpeXptR1dkdzBqcjZiSzJKbjJ1MVNSVmwvTndXSW9Qci9W?=
 =?utf-8?B?amNTQi9oSVhLUjlPclA0SStVUHFvZDV4S3hVc0w2dHIzdnBUWEd5WEs0ek5k?=
 =?utf-8?B?Q1VXYXc4bUlyTWRiK3lPRDB1d0pxZGs4NWR3ZXRQVC9XODI5azRFOXRiT3U5?=
 =?utf-8?B?VzhHZ1dYZVpSdGFVbkV5eDJXVS9LKyt2N1hmYXhNaDY2QmFXeGNxVzArTnVN?=
 =?utf-8?B?K0wxTmttcDA2eEpUUkRhVDBnRXRPS0F2RUZWc3dRWVVZdzZKdWNLNGg5Rlpu?=
 =?utf-8?B?VTFpTFFyWXJqRXFYT1NCcWJEaERweEJIWHNnWjhsbytEakFWeVZYczMvd0pR?=
 =?utf-8?B?L1FOWTBxNTFRVlh2TVVISS9BRUxEN1RmNkRTMHNsSkJRSnhGRTg4SWFuNS8z?=
 =?utf-8?B?S2RjckY3YmZucVlOT0owNW5mNGpVbTlCWlZTRmloNytRQi9Qdnd4MkZIWmoy?=
 =?utf-8?B?TkZhbXRMeFYrQzhxL01BbEhJekVTdEFBUFFYRVRmZnk1SWJBL1RadEZCRmJn?=
 =?utf-8?B?Z3Z6SjVFNjdsb1pOYm9qS2xta2tmUUg1clcwTU9EK01GQUVGQmU5cWFuWit4?=
 =?utf-8?B?TVZPcnNoU2Qxd3h1WkxPRUowL1AxSE50ZVhLQldOT2R6WVYrVEZhQ1NxbnRu?=
 =?utf-8?B?amZoRjNVN05qY2tTTFBoTXRmRHUvUjI2SkVSMXpJSktwc3RBeWJRRDBxNXZU?=
 =?utf-8?B?VHpReVlVTkxoUjhldE1INENWb1FBYU1CRVgwOW9zN3ZqM0FsMlVRWVR6K3Iz?=
 =?utf-8?B?MVZxMXVnd0N5UlQ3eXEwSXhBTHBaSmE3bUhsUG1zVFpwQ1VuSGVXYjVsVGhp?=
 =?utf-8?B?T0dIaWVVcGQ5NUx3R2tuY3BUREJpdTh2bEJBZU5aSk82Q1RDYWJ5Wm85eEV5?=
 =?utf-8?B?bHRnd3UvbS9YUkxwKzFaVWUzK1ZkNXNJUis2c0dUTC9uS3JjVXc1THUxdVJi?=
 =?utf-8?B?N0o4YVpPK3ZBQ3A0bDBLRkNZMGQwM1ZIeTQzbWU5VS9uWnFocUhjczVRSE1V?=
 =?utf-8?B?aUtQbDMwZTVPNXhSWnFHUExCNmZWb094UG1DaTAvR3pSb1d1Mms2ZkdsdzMv?=
 =?utf-8?B?cDVscmd0TUZVazh0cnBteVY0SG5ad1dDUDNQd05lUnk1OVRjNnpGWjhNbEhN?=
 =?utf-8?B?ZSt4a0VlREc4cWJYMC91bHU3OFlyTnBZT3hNSW5TUXJNUkFvRW9yYmc5S1Z2?=
 =?utf-8?B?Z0dJYWhGaWNrKzNqcGNlcjVkRDZBRTlSWmJhUlZ5VzM5cFZ0Y2RTT2piczVs?=
 =?utf-8?B?NWFCcVJKR2ZpRTJmdjdQZkwwcVdTb3p1NmZNdjliSXgvS2VWaGVRekJZeHBG?=
 =?utf-8?B?MVNCSnR4bUpYVkh5ZnJKamtqMTZZaVhDUmpETmduSkZpT2FYbzhscThMR1Rl?=
 =?utf-8?B?WGExcDFoUkZRS0h0anZ3cCtkR1hGWVhWakxiR3N0clZKM29OQjZ3UUppNzBM?=
 =?utf-8?B?cHl5SU16c25LaFRWS2FCYWRxY0VpUlNLNHdxd2dnWVBsOFYzQk9Gb0hpSytm?=
 =?utf-8?B?c1FET2ZFV2Z3dEpVZk4xdG5HY2RKczUwSHNxTFkwSHV2VWUxaEFLQW9nPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MVcrMkRwUXprcWhISkx4bmNzTTF1TXltY0lhd3lldHZaa1FmdzlxTWR0K2dt?=
 =?utf-8?B?L2tGayt4ZzdQU1ZQb2pIVEo2dnc4VmpwZkJpaWRuYTNWS0tBdW13TkNabmJL?=
 =?utf-8?B?bG9ZYlhFWDE3K2Jyb042MWRISnhLamthNzRUZ0xUL21oeStWMXRoNHk3dERT?=
 =?utf-8?B?K3hUVnhIM0xuWmJRbVVJUkxNZEJIQmI1dXBqNDA3QzVJc1VQS0VCQ2V0VHJV?=
 =?utf-8?B?R0d6S1JpMnhaSUdMRHRieFppZU9LWkQwUUVpYkJOWVVuQm8vQVlxTlBnSDlG?=
 =?utf-8?B?RU9VZFExZG9ReDg5NmZyNXp1RTZnS3Y1dlJxMVFSOXJWWE9Lalo0SGF4Y081?=
 =?utf-8?B?dkxxMXlaVzdjWVhZWTFPUUVzcSs1enYrend1SUVZL2MrUnR3YXBYd2xFVXRN?=
 =?utf-8?B?S2hRZlRZaEl1aXhlV2pHK1ZrTXZpT2g2dnNCVXdaT29RbWNmOTh0L1RiaWNu?=
 =?utf-8?B?T3FVRDBDM1FYYlBTVVdGQVU2TFlvb0k1USt5SGhkQmEwQWZPR2FxazFYUWp3?=
 =?utf-8?B?ZHBlNklVUHRhRnJIcjBKZ01PK0ZFYzFWdmk0OEdPd2VsSkNKUTZTdUFGTHd0?=
 =?utf-8?B?WGp3dUR4ZVgyaEowYXNrY1dscldIdFg0a29MMWk0RkorREdDS2h2SlU1Z1Zo?=
 =?utf-8?B?RGFRMDkwVmhKU1FYajZ5UlRZQjZqMURWZDZ0aU9yRUEwWmtsY2RoaC9wTEZ1?=
 =?utf-8?B?VFZmejd6NU5wUWhKK004TEM0SXdNVENyOWhMVmM3N0EzMklRMXMvdnBqa05L?=
 =?utf-8?B?b1BtbVo4SVY1aW9sUHB0L0ZNakx3VzZTbXhCRGUxM2lrRUlsVHc2RU5VQTl6?=
 =?utf-8?B?R01nUzJhZi9BK1pjeSt3ZmI4a1lrM1pHMlRHYS9IUi9vLy9sVWY0Zzd5em50?=
 =?utf-8?B?QXNWTGVrOGF5QVM1K1hQeThwV0xZM2w5TTZiaVIzcmxPbjBIYU1BTDBReHhH?=
 =?utf-8?B?T3krRmpVWXV5NGw4ZThlR1hpSDdDUU1rbUhsMTE1MUpJaUlZYW1pUlZhWERs?=
 =?utf-8?B?aWd0VXVMQXFiL1BNQU1PMjBVN2hQRkF0V29pN0k5Y2FkVFl4ZTZXL3VneUI5?=
 =?utf-8?B?UlNMM3cveklCTjFsT0krTmdiSkI4bGZtVEdJL2RVamRUVStyT3ZKZnVCUFhk?=
 =?utf-8?B?dEU4bjVhbCtaUmtmaG5Sd0VXTndrVFVTVnNsMnQ0U055MXNCSnNEMGg5Rngv?=
 =?utf-8?B?Q0JieWtiNTBtR0hyeVdvZ0Z6bFpvWEVwamtSc0xwSndNTFdvb09xS2szWXAw?=
 =?utf-8?B?TDRxY1BnQ1FVYnl1bmFlWnFaK2QySnlPTFFqNjN0SjhaUG1kR25PaExlWmt1?=
 =?utf-8?B?YXl5UFdRQ2d1aEx2WDdaQnFRZVg2MXNBY1BJRG90Yk1ReG14VVlpMXZwZG5s?=
 =?utf-8?B?dUlRUjF5eVZPVWNzVzJYMXp5ZlU0L2dPVTdNUEFmaE1YV3JIdkdKWHZZdVJI?=
 =?utf-8?B?RjFRRjdrT1drUzJKYUJUY25SdytwNmRTd2swTUJkT3kzTTRrWDFEZG9ZbDNR?=
 =?utf-8?B?cDNZVFVvM2EzeTh5S1h3Nk0xMEtaa0JLby8rLytTc25ORUZYT2duUlRxZkFZ?=
 =?utf-8?B?QXhUblBFcmgrcDNXb2NERHlLYXhDTllXekFESkd0WEUzSC92aityMC9pclFP?=
 =?utf-8?B?cGhIRTQreUVlQzY0dEtQdE9MK1RMZkltbU9TWndxUVI3L3JBSmF4UmtFQzRE?=
 =?utf-8?B?UlV4L29qOEt1cjg0WE44RGh2RWxmT3JJQ0dlN0FQWkY0U0FUV2ZNS2pzRGhO?=
 =?utf-8?B?Q3pDc0xHRyttS3YvTzB5RW1vQmRmaVljc2hUYXRwR3NMbnIxUjVSUEpMelhQ?=
 =?utf-8?B?M0dDOGRmZTBKZXNNYUZWZXZKSXBRc0Z1UC92KzFCQWF2OXVzcGVmL3lFalBs?=
 =?utf-8?B?UzJ3SHBPV3JoOEdlOFJhaGRCZWlhMjEwSVQ4TWM1dnA0Wm1xcCtmOXBzQ1hY?=
 =?utf-8?B?YkdtL252cW5sT2JNcDA1NGhjMVd3Rm11VUlLT0hVYytzRVBTSlVUYkZwKy9I?=
 =?utf-8?B?Ynl2UlhWTzRyeW12QmpkQXdwSVdwVElNQlhpK3lESS9xczRmeTJ1QXRyMVh0?=
 =?utf-8?B?bkNLTmxMdHh0eUVOTUtEVXduQVFkdzZDdURvZDMwdGx5cVBDV3VCU082aTZL?=
 =?utf-8?B?QVRHbTFvSW5nTnJMOCtEcGN3WWFISitPSEordUFHVEJkNVQwOWtnUUxhQTR5?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	XVG1BfbL3MBUCblUN2XlKKwqGpntjt4LqwGcCLGhdaQscxNB69ZjzIjMlbya1p2qsn2QDS+qrViU9I0S13jQT8TaGf0kaIPWt3gDOcAE+LrQbPcUbQIhKDmYAEngf5TgcjlNFVc2+XknD3BtVQZrL5G6MtwJCaG+u2Y5OCcfPbiNmEmJfbZGR2XFRD+EN7nipafPHoHkqNJn69e2YE1MY+GldT7sFbVQzMp1ucvsieDwFDLk2HR/cv0m4SxFvi+XrhR45I/rXBQlavLg+P990PYB51LmkLrHL0yDKgfwF51WrJrjfJPHjM4U+Xw2HIx37yg0s7WLa032x+NmeQjbNFSarazkHEBUoC4l8YrZY0dFBmi9LtwEZleJJCLGKpr9De5RMqloSx3Hs6HzUXUFAIlMco5XRWb/Tk/sglbP5O6ZnyXzBTPgVwDXnvLgnUbzSGmJnpmsC8Iejlq9yzdXRxJ9+qPHCIBeagJJEZobgMCN2RKDo7B6A4lDDOj9O2VsiMliEgvJ81Z1OncQKFjkiSyBIBIxTPW9tF5uVdZNyjPtG2IByNfa3oHRWs91zokaG0/Y/c6i1xtSHY8qd0KR8MNLyRC2wIrEY47ji8KJUWY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1713ee6f-92ac-48b4-d34b-08dd080420a6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 19:06:37.8539
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aL7Qj2e+cyIJLsH8a8ws3LVUe7nkrS3sISA6Pae2ppWn0/GrPKuNNnWYMNmDZyA5m0sowIgityJC0OBmFYB9WNgUIXxgrTA6mhNU1gk6cHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5049
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-18_15,2024-11-18_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2409260000 definitions=main-2411180157
X-Proofpoint-GUID: kpRewRbULNAsi6_kbdSjNRvH-jg-P8oG
X-Proofpoint-ORIG-GUID: kpRewRbULNAsi6_kbdSjNRvH-jg-P8oG
Subject: [oss-security] Fwd: wget-1.25.0 released [fixes CVE-2024-10524]

The JFrog Security Research Team has posted about this vulnerability in:
   https://jfrog.com/blog/cve-2024-10524-wget-zero-day-vulnerability/

They say:

"The vulnerability, later assigned CVE-2024-10524, may lead to various types of
  attacks – including phishing, SSRF, and MiTM. These attacks can have severe
  consequences such as resource restriction bypass and sensitive information
  exposure."

and

"It has been discovered that when using the HTTP shorthand format with user-
  provided input, unexpected behavior may occur. Wget might issue an FTP request
  to a different host – a potentially attacker-controlled host or a restricted
  host which the user normally does not have access to. This SSRF vulnerability
  can be the starting point for many types of attacks."

-------- Forwarded Message --------
Subject: wget-1.25.0 released [stable]
Date: Mon, 11 Nov 2024 16:36:47 +0100
From: Darshit Shah <darnir@gnu.org>
To: info-gnu@gnu.org
CC: coordinator@translationproject.org, bug-wget@gnu.org


I'm glad to announce wget-1.25.0, a new stable release.

GNU wget is a free software package for retrieving files using HTTP, HTTPS and FTP,
the most widely-used Internet protocols. It is a non-interactive command-line tool,
so it may easily be called from scripts, cron jobs, terminals without X Window System support, etc.

There are two breaking changes in this release.
The first and more important one is that the shorthand format for both HTTP
and FTP URLs has been entirely removed. This format was previously deprecated
and is now no longer supported. This means invocations of the form:

```
$ wget username:password@myserver
```
will now result in a URL error. Users must use the full form:
```
$ wget http://username:password@myserver
```

The other breaking change is that input file reads are now non-blocking.
Suppose you used the following invocation
```
$ print_urls | wget -i-
```
to retrieve a list of URLs provided to Wget on stdin. Previously, wget would
attempt to read everything it could at the beginning, close stdin and retrieve
all URLs. With 1.25.0, Wget will continuously keep reading from the pipe until
the other end closes the pipe.
This feature is currently not available on Windows.

There were other minor changes and stability improvements.

There have been 46 commits by 3 people in the 35 weeks since 1.24.5.

See the NEWS below for a brief summary.

Thanks to everyone who has contributed!
The following people contributed changes to this release:

    Darshit Shah (13)
    Sam James (2)
    Tim Rühsen (31)

Darshit
   [on behalf of the wget maintainers]
==================================================================

Here is the GNU wget home page:
      https://gnu.org/s/wget/

For a summary of changes and contributors, see:
    https://git.sv.gnu.org/gitweb/?p=wget.git;a=shortlog;h=v1.25.0
or run this command from a git-cloned wget directory:
    git shortlog v1.24.5..v1.25.0

Here are the compressed sources:
    https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.gz   (5.1MB)
    https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.lz   (2.5MB)

Here are the GPG detached signatures:
    https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.gz.sig
    https://ftpmirror.gnu.org/wget/wget-1.25.0.tar.lz.sig

Use a mirror for higher download bandwidth:
    https://www.gnu.org/order/ftp.html

Here are the SHA1 and SHA256 checksums:

    939b74b0759a2e5f57ec9ac12f5b4403fd9cf5cf  wget-1.25.0.tar.gz
    dm5IQj55NZ6jHkHbnlwolnWUen/PLv3O23JqydDaN4Q=  wget-1.25.0.tar.gz
    ca79e61fbf1d32133f60ef7c7d476b250b6da423  wget-1.25.0.tar.lz
    GSJcx1awoIj8gRSNxqQKDI8ymvf9hIPxx7L+UPTgih8=  wget-1.25.0.tar.lz

Verify the base64 SHA256 checksum with cksum -a sha256 --check
from coreutils-9.2 or OpenBSD's cksum since 2007.

Use a .sig file to verify that the corresponding file (without the
.sig suffix) is intact.  First, be sure to download both the .sig file
and the corresponding tarball.  Then, run a command like this:

    gpg --verify wget-1.25.0.tar.gz.sig

The signature should match the fingerprint of the following key:

    pub   rsa4096 2015-10-14 [SC]
          7845 120B 07CB D8D6 ECE5  FF2B 2A17 43ED A91A 35B6
    uid   Darshit Shah <gpg@darnir.net>
    uid   Darshit Shah <darnir@gnu.org>

If that command fails because you don't have the required public key,
or that public key has expired, try the following commands to retrieve
or refresh it, and then rerun the 'gpg --verify' command.

    gpg --locate-external-key gpg@darnir.net

    gpg --recv-keys 64FF90AAE8C70AF9

    wget -q -O- 'https://savannah.gnu.org/project/release-gpgkeys.php?group=wget&download=1' | gpg --import -

As a last resort to find the key, you can try the official GNU
keyring:

    wget -q https://ftp.gnu.org/gnu/gnu-keyring.gpg
    gpg --keyring gnu-keyring.gpg --verify wget-1.25.0.tar.gz.sig

This release was bootstrapped with the following tools:
    Autoconf 2.72
    Automake 1.17
    Gnulib v1.0-1057-g74b6a2a738

NEWS

* Noteworthy changes in release 1.25.0 (2024-11-10) [stable]

** [Breaking change] Drop support for shorthand FTP URLs (CVE-2024-10524)

** [Breaking change] Switch to continuous reading from stdin pipes

** Reimplement user-info parsing based on RFC 2396

** Fix a build issue with libproxy and --disable-debug

