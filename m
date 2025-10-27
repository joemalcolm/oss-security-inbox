Received: (qmail 5969 invoked by uid 550); 27 Oct 2025 16:34:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5919 invoked from network); 27 Oct 2025 16:34:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=M77sQ54U1/9ERlYH
	SAyS96srfXq7QfWP5ZunGSPvV1s=; b=lU0uN78ZL3mOvUJuxGU2/ZawkyTsJDMr
	rtCPewAmVeZiUxdRcVuFDFKGFjASgwjNM3xnomWPMquu8XcAFbeOVpyOThXm097h
	iuN1K4JlBtetblWT4S5fqkvRje7T6CZt6OzVCYP4tbhuch+aMHAzd2zVQ6DuNYNp
	Jr/yUP2NRlquVHPURJSP+055oHnIMuKarTNSyrMVWW9RynBLo1L8jKTSoDhLLvHp
	il39odFAGV5FDw0GFl8qmhDOOyB5chI01a+I3iWMZp1gPWyfVK9vmH0O6ymHZ+D9
	DGUgU8AflWGle8rbVgvDoygZBsRGkuvy07qL3TROVT/Z5CzjnrKRwQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gi+OCNJXqECOGdPftqLQh0sAN7XEtNU/WLIWS4q3FZW2xtr1/Z5i4KbTGSfydBjpq3FGHi361+SBncflk9lX8rnL3oqdqtVqhL+0o/Hrlg4UZLjq7kKGJ86Pw3lnVhijL47nHipjRoDwm5CPn2c78iVD4dZJykgDGIjJUkwItsW1B9XOx/k+K6Q4bOGdqedI64tIqaNM+6dCWo7AM/m2I/yZtrdbMqK3oBaGvMCVrj3pB+3q/Cwajqqc+X/DxosW34PKHcsrrfzDzWJyuCKaqmnt6vrA8+tzocg1epQxVjQZ8rHMkdHhFr0pGyFhji0cFzGgmzKEk3zbng5Yj4+5pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M77sQ54U1/9ERlYHSAyS96srfXq7QfWP5ZunGSPvV1s=;
 b=FvLiafCaIOSJivOUldOhs1WkreSgnjcOKybA5kNmUWzEP7A7lj9/4FBy5p9leZlpJTbIrqELY9p64hcSG3O53hIDm80CcHYW9B8sJWRzs1R18NowFjEHJyx9uJrrPdYO+ulPhMC7nO6oL+ENob11sljtQNs7eycGbv2RFd4QQyKQR7ihO4I12LjIr5XI9n2BKDKk32S3aDzyjMGb/eRkJBlTyXaPiKEvueuv6nGMxdj9SxOWCC0vnjmk1ykmvekrdBG+MyD1NW/efWJP6gU2tOb7+7CAzyBCb4PUaxyJTnPSIO6E6of+fNfhZhdtF/5UWsHKRaX1L3MjW95LzxoUcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M77sQ54U1/9ERlYHSAyS96srfXq7QfWP5ZunGSPvV1s=;
 b=hj1wzQmmi5TPP1yNc1vci413cqJSY0BSPjH8PsYaXYDCxFTLENTLR7MG0EjP2YgnhD1bY9XgFgsJWjHQX2EwGwbjY6r4HFwlVvnHBhNyphficPQSP21yA2QXzEB9gjPfQvqmOke7ABeOS51yHq++0MTmRKX3CVgHy2gQiiaMnnk=
Message-ID: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
Date: Mon, 27 Oct 2025 09:34:03 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
X-ClientProxiedBy: PH7P220CA0107.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:32d::13) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|DS4PPF072D269AC:EE_
X-MS-Office365-Filtering-Correlation-Id: 134c5b5f-12d9-4072-ca1a-08de1576a54b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OHdqSTMxZzcvVGloVndjeTVBRS9XRTNvM0hyTDRXaUtXYkVsS3czS3lUamtz?=
 =?utf-8?B?bmcvMTU4U2RIVW54eGRSeERhRldRVVdQdnlrSXhmUm9YckZycU9QY2NjWnlS?=
 =?utf-8?B?bVNjeXhpZjRZMld2NzZLeDNSQ2RKWWIwWGxVdkQ0MDBuRlEydC9HUHE3Tlhy?=
 =?utf-8?B?TXlBOUs0ZFpZTnlLaG14YmUrRlArR3o1d0lPTlpveUlpSkJQdUF1M3VLN3Jj?=
 =?utf-8?B?ODlaWjBrQlJ4OU9kc0s0b0l5eUs0SkZzbDlSS0o5dSs3clJpQURyL0xZeFg4?=
 =?utf-8?B?RG1lRE4zU3JaUS9WSzgydDYreTRUc05lMUIwVmZwaTBuYmc4UGhHaFF4My9E?=
 =?utf-8?B?SS9vOHB0NzJ4VHRWMnhnS0pUakNyd1FvQXAxNUZSQmpOSHVhU3ZET1ZMQi9W?=
 =?utf-8?B?SkZEUmJ5cUFpQXlPKzZFWVVFdTBsbVErSXZOaDFIcGFKVEpZSmlnejhKNEtx?=
 =?utf-8?B?TWZrZDlBeDhnbmpSMmxkUGhDL09TTU1wS3l6cHp3a2ZwNGRHYjJuY1BBY3BU?=
 =?utf-8?B?b2VaVlgvdlhJS3MrRGUzVEU0dUQyQ2twOWFwRGpEVkFNb0h1RFZaY2ErZ3JH?=
 =?utf-8?B?ZXFwUjhLT2w4QUZvNStXYnRlYU52YTdlWms4Z0RvV3BKWFpvVWRDMjBRSlIr?=
 =?utf-8?B?dFVEcUtheU5kR1NkTW11dFY1ditvSXRhay9iNHJCdHJGTFpOczVDTXlSbFhN?=
 =?utf-8?B?M20vNS9SdXdaWnNBbWw2TTcxT3RoNUZMM1ZjeXJpeEdkek5kVVBFVWJXV2Ji?=
 =?utf-8?B?Q3VvZTQxY2pyOEJpTkJsSmMrMkQydzVxazEvQ3A5a3lWaTY2dVVPbi9QRlJl?=
 =?utf-8?B?aTFlZVlnTDQ4Y1BxeU5PZS9oU1VkeFpPcXpicWdPUGEyTlVCL3VGQ3dYSStp?=
 =?utf-8?B?NEo5NFdBMG9LeGp3QjlhYlo2R0psQ2F4Um9HQml1SU1EQ3I0dkhzaGo2Nm95?=
 =?utf-8?B?d1Z3OHNRRkgxUVVUL2o0dGlZSHpVNVZWbDJvc1ptUHhucS9qZ3NzL3FIZ2Nu?=
 =?utf-8?B?U21YTy9Td1pTMzIvK1dFWmw1SThGL1cwc25MVmdrNVFPWHFCZkZuaWR0MXZr?=
 =?utf-8?B?TWJBNlBDbHloc3BkMmFvNWpsQ3d4NGZOU25lRmp1OHJLbnhWeWFXNmlqSlA3?=
 =?utf-8?B?Y3c0MThmRGQ3REZoRlVQVlhzVWdQZ2JYWWdYNGRNRTcrUjNZa0tzdUF3VUFR?=
 =?utf-8?B?Y2lnbFBNYjZHVEo1eDdyQmhSWk42VnAvQmJidk85QnlIcXNveDJWL1llQldL?=
 =?utf-8?B?dkJ3SXkzQ2ZJTXhSdHFmZ3lFN2hRbmVZUEdtckFYQVpxR1BuOXIvaHhNMkls?=
 =?utf-8?B?eDdXUFJWMTg4dEdoSEp6TUxDRThoUE4rSy9YaGNaZHBOekE5MXczbzlUaUVU?=
 =?utf-8?B?NVB4SW8zTUNOZ2tJVDNSbUhGYWhTMXlqQnpKZ3RENnh0azZ3cHdUdWZmdWxi?=
 =?utf-8?B?Q3pOdWZrOTMwSHhhU2x2aEFRMEdKRlQyemZvazRoMkJLK3AyWm5aQ041UTJl?=
 =?utf-8?B?Wmx3a2JjRjhTSWNJWjY4a3kvZmF5YnJpSFg5OHpMQytSS1l0OFJON1NHa3ow?=
 =?utf-8?B?ZXpQWGk0TGNpMEhkdG9nU3lSYmY4V0N6aDZaeStxeld0a2lCNGVIRzBqQVBw?=
 =?utf-8?B?TXc1M1plUHlQN2FQUUdOenBvT0lsYjVnU3NralN0TEZYc3ZQdE5vZGw5eUFQ?=
 =?utf-8?B?cHNYVmx1NmgzLzJpdURhaklyMlFmUVNFakJoMG1saklvMWhYZytEajZNS09S?=
 =?utf-8?B?WjFERi9PTFZucWJGSGJOM05UaThVendqOWxCWmVzVmpNTUVrczFndmtaTlRn?=
 =?utf-8?B?cHY1VTIrd2JDWTdoN3NsdnY0RlZ0YWlmd2M3dEsrb1pER3pJaVVvc2VBYmpj?=
 =?utf-8?B?SmxqZ0wxUDBVRWlmN09nWTI4cUZJZW00T0I1UDZlOElyUFE9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dk1TOTlySWRVdmczZlprdG42Z2N0cE5JU3czRFRKMm1DaU0vQXI3cWtWY1F3?=
 =?utf-8?B?UFA2NmRlc1ZVUkRLWmJ2NC9pbFRrRUFIUmhNZVQ0bzJXb2Y1UGRMeWFncHZH?=
 =?utf-8?B?OVBKTjlBUFlaOVRrMjZoSWk0N0VoR1hVdHpwL25FZ3RGRXVEQ2Jwd0k3WmZa?=
 =?utf-8?B?MXJhakhiRWJJSWdvalNwQkhkMSs4Q3NyMFV0OCs2VHlsbDJKTFNxcmc0VU9t?=
 =?utf-8?B?cVhJRnlDTW9CL2twakVnbXNESFpQUE5FeVR6dDBxVzF6VXlYWjBaRlBlMW01?=
 =?utf-8?B?TndrWjE3VVJjaXRKaFVZNDBLQVBETWMvbnJ1OFhTTmRVZnpBK1VBRXIxYUVW?=
 =?utf-8?B?aExwTEsyeERlS2QvR0pSZnBXRjdVeWJ4THdlVHRySmc4dUd4cTRUOWlGcmQr?=
 =?utf-8?B?eThlWjVBN0F4U3FwbnBhMURXMDQ3dGhUSlJyOGVDUFJZY1Z4WUVVS0IyWXMy?=
 =?utf-8?B?OXFqZmlNNXZ2UVNJQkdZWURLUWlqRnRkb3dkbHN4T3cyNEFKSUpXNmZRZmJD?=
 =?utf-8?B?bzBnRC93ZWRTREg1cEJnaDhEUGl3WU9rYU40VjdxYWRCbmVPcm5EQlZwbXdK?=
 =?utf-8?B?N3NRNFYraFZkOW13ajVvWEF6RFhwZURsaFNBaHd2MmU2UHJDWmNKb1Yxb01K?=
 =?utf-8?B?dWxwTzEvdTdvTVVDeFdQbitYdUtJazVHSGJ3UlRjczdQWktUSlc2SG9KTGkz?=
 =?utf-8?B?Nkh4VG5mMVZPVWt6QjRqY0lTUHNIeXN5bEc4VmpKTDI5SUtDcDlCN2VUQUZp?=
 =?utf-8?B?aUJiL2ZDTUMycUdWVEVPcG5RQ01HM0dtOHFVTFo5S1J4NjVSZXdwczZ6TEtD?=
 =?utf-8?B?Q2E0Mmc3U2RCQ2RPM0dlOXdtNjl5TDJLc3dMQXJBeHVYemE2ZHhRZTlaZzZi?=
 =?utf-8?B?aHY3TTF0UGJPQ20wYmdRZjBJTkhhczFUVXRlSjFIWHQwWCtqaVVFRHM3NUtD?=
 =?utf-8?B?a3I1cEp2azVCRnhRVGZHR0wyZThHQ0hWTG8wTUpFMVh1ekVrbFdKa1F4VGw1?=
 =?utf-8?B?NzVzbTY4eVN5SGZnS0tCWk1rcUlzV1NaVEhBR084eHpSS0NMblh0b1dqbFF6?=
 =?utf-8?B?TTA4Z3liTzVRcG01QlNtUTFiZzBVeHZxTWM3eFZQdDk2V1krckQ5ZlVmYlZG?=
 =?utf-8?B?QTBhNGVKajN1L3pldUNRV2tFWjlydDh5T2V2aW51M0JseUJGVE12WWczQUk0?=
 =?utf-8?B?c0xpNUFsZHNHNW1GeXh3YlpFTWR1ZTFSaU1ybjk2aUpOci9Mc0dBT2tKb3cv?=
 =?utf-8?B?YXJoYjJXd0w1V3F3ZHJpL3lWNG0xWFhoRGppMlJnSU9sandwV0M0QWNOUU1H?=
 =?utf-8?B?UEJ5SDZ1ejdtdGVkS3R3Q2ZSMHJ2U3MwUkdHcDNaT2IrRXU2TmM1VVBDMnND?=
 =?utf-8?B?SEJZZUVybnBjQVl0QlhwY0lrdEMzT2M3QktsMHV1aCtUOXArazQrTktyb1Zq?=
 =?utf-8?B?VTdZWXF1UFJ6NVRlamx0R3RUWEVKTytNbjZzS2JIeHBydVh5OGtiQXBzbC9R?=
 =?utf-8?B?YzROZEVSV3ovTG90czd3RWZSNytBcFUxcWxSZWN0aWgxdTFzNjFlcXQ1SE9O?=
 =?utf-8?B?V2pvSjhVdWhBRVgzbGJJeC9PYTA4RXdrYW1KWERNaEhNZC9aMDBRdFpFL3Zv?=
 =?utf-8?B?Y2x4VHpSWS9JdDB5UmZzZklaNk55Ni9oNVpjTGZXYzVDdGdjeHBWNVRKbVlF?=
 =?utf-8?B?L2w4YjlzVXExM0VGbThtbmFFTXhORDd3ZmQxNHh2OVNTcmpEcUVMNjNyRmVE?=
 =?utf-8?B?WjJsREZmb2Q1ZEZtMlZjekp6VGxHaW5Mb1h4N1gzTTR1WEx5QzNEYW1lNUI0?=
 =?utf-8?B?KzE0TWQ4dkpUbVgvZ3lqV1hVWW9EazRhOUJ4VHFEbVdLMUZjRjZ1dE9vVlJK?=
 =?utf-8?B?RjhmelZicFVBQ2FTQUxtWkVvT295SXphUzdOa2NwZVMxaGNPcWoyVno3SGNi?=
 =?utf-8?B?QTgzaFpSbmljMUNkQWVMeFBhMk9jaDJNWWFSNlVuSjFLYmwwWTZqQkpTdjRl?=
 =?utf-8?B?cXJiUTlRRHZIdEcwQ1BOWVcvMXlZb0lBbmFqbjlWZmdmL0U5bFlVcCtFekRO?=
 =?utf-8?B?RGlWSWhGVEQ3dk5XeGJ6SUsyc3lOU0RxVHlpd1FSd2hPK1E1UzhZRjdRMHp1?=
 =?utf-8?B?RW4vZkVRY1J5eDBMM2w3djErb3dLL1NSRVBDTDZFSVoxbkpYRmQ1YkVYM3ls?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ftFvdtb9pLTbqJttKsNp1/55MyM2+rnigpWEv9FDBuqBCyne5xjD0X6V25SuTRmjS53NqPTe8vZV46/7s0imV/E4Z4GABksUJztduvHTHBC/+7XrVT928L4ZhKqkErtNDhjg8OS8WYJynPkUIbpU5P7+5XPPya3p3WksXh7aFMBKhre2c9kmBuHqurv89nmIOwaDf8xB1wl5Bx/EA4JMvenmJuwOcm7pWvlYsJQSG05Qxd5rIUCi4ILkGwrdivtF6aICgGpwKiCp5EQvu+e+50/x4tap36T+/DpotWXt4BYNq4eXcvgDfefpWeHl02kbw7/a9cV9RW1kTz+Ypp+Q/SPticUWZV2LIaG3xVFieg1/KpCD7ymKRFgLY20anUTwcaCQS9mXrqxawQVOHJ7drnjZmX1c13EbQUkBYcBno9R41LYgPSSj2gebdCK0/8yIRl+BYEI0nVLuVleH+kiFGKEwtcXOCEoDLo0i8cX33o2Ch1uYEwhtBU191v92Fkt5/Xe+4DUXt7HZ4O3S6h+yZe6O3AN5CI5Ne3ZzrLClP83CsQX1/sZo/k1XK3WRL8suVq2nID1xwVf25vHRlWdefvPtiwvtON00V+BkwIvc6CI=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 134c5b5f-12d9-4072-ca1a-08de1576a54b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 16:34:05.8314
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Wht+RTRea9uubI3Y3ylsVheIvAgavsRBY1Os+zMee1zmBQKHi9lHyVDhpINsrRZXLy1qn+wOeE5TTWgCHoRjms73Qy+TAHuhS1NVVAaN48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF072D269AC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_06,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510020000 definitions=main-2510270154
X-Proofpoint-GUID: iqFRsM2wJi0LcBPlQTqLWzxUKnJSVkqp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA1MSBTYWx0ZWRfX3AX/hiYzaQ8r
 FaW5bowoXtxn5NalbSKJJ+w5xuuY/ImPfYv0vCfsbP+ZeSaQKoxkjyVpI8Y0myqcfk4qmtcOlQe
 i1M83xSEITCm8RcabQUkXpWi1zPvbk/Ug4nbv231uzeRtWPy+DprmT2w97yK04qyBZjZm5TaJMQ
 bun8FFsn8Buiijnoo6v6jQY/H9WIy8MfEoJ7bpBi/RpWs1zRZAuHtkItoQJ1Ndf8z/uWjo1i1L3
 VNruWXrYzUseBNTsYIL/igkTne70i//zSSvc7Txcekonk5ZgfSNSbzGKMHjoUNI0HDqccYu88na
 F2kY2NchGAhHCQoqOmpMneMakDHDP3zC33WovqvwrYwcGKBIYsJon3uazDU/RF3kilZmev0rvDe
 sUVf6wX7IdAtLN5xwx2wPGuAlKKx1g==
X-Authority-Analysis: v=2.4 cv=Xe+EDY55 c=1 sm=1 tr=0 ts=68ff9f01 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=y-Dgl9A5AAAA:8 a=yPCof4ZbAAAA:8 a=zLnrkOl03fV0AEd9oO4A:9 a=QEXdDO2ut3YA:10
 a=BJcWwQPgzPn2JyNkRwQo:22 a=poXaRoVlC6wW9_mwW8W4:22 a=Z5ABNNGmrOfJ6cZ5bIyy:22
 a=jd6J4Gguk5HxikPWLKER:22
X-Proofpoint-ORIG-GUID: iqFRsM2wJi0LcBPlQTqLWzxUKnJSVkqp
Subject: [oss-security] Questionable CVE's reported against dnsmasq

Among the new CVE's published this weekend were these from the VulDB CNA:

CVE-2025-12198

    A vulnerability has been found in dnsmasq up to 2.73rc6. Affected is the
    function parse_hex of the file src/util.c of the component Config File
    Handler. The manipulation of the argument i leads to heap-based buffer
    overflow. Local access is required to approach this attack. The exploit
    has been disclosed to the public and may be used. The vendor was
    contacted early about this disclosure but did not respond in any way.

    https://shimo.im/docs/1d3aMVMmNmiLjg3g/read

CVE-2025-12199

    A vulnerability was found in dnsmasq up to 2.73rc6. Affected by this
    vulnerability is the function check_servers of the file src/network.c
    of the component Config File Handler. The manipulation results in null
    pointer dereference. The attack needs to be approached locally. The exploit
    has been made public and could be used. The vendor was contacted early about
    this disclosure but did not respond in any way.

    https://shimo.im/docs/ZzkLMVMN7vIYJBAQ/read

CVE-2025-12200

    A vulnerability was determined in dnsmasq up to 2.73rc6. Affected by this
    issue is the function parse_dhcp_opt of the file src/option.c of the
    component Config File Handler. This manipulation of the argument m causes
    null pointer dereference. The attack can only be executed locally. The
    exploit has been publicly disclosed and may be utilized. The vendor was
    contacted early about this disclosure but did not respond in any way.

    https://shimo.im/docs/5xkGoMo0WVfY4dkX/read

For all three bugs, the documented "exploit" requires "Replace the default
configuration file (/etc/dnsmasq.conf) with the provided malicious file."
and if you can replace the server's configuration file you don't need to
play games with putting invalid contents in to break the parser, but can
simply change the configuration directly.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

