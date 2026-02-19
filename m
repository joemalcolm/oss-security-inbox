Received: (qmail 7433 invoked by uid 550); 19 Feb 2026 18:26:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7370 invoked from network); 19 Feb 2026 18:26:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=odecouWw/97cEZa5
	CWHUKgr52AFqBqcdcbWzRbgPHFE=; b=gOji0Cc6HXP1wJSX/nAnNiZTN8lInEyd
	nwvhT+qTOluWlIdBOJmWVoDQqgBJ/ByL+ciyZXUauj2XJ32g0yUMfcXZiQDAE6W5
	2VN4oYPewaoGB5rsFlF/wibjDD4NwfMpyLhI+UXduYReVYPWIZwpsPe19ZEs0nne
	haBLrRq9vdyd4Y6Vhd6+OLSc4rFwZ181GIxuN8JMGUfwr5f7g/QaVmMHIVAMZnsj
	2vt/HHrw86s93PLJgCaF/v1HT7aX8YSgawCq9vW9T+zgG2mPW2uA38i9Um4PyuRZ
	I0t3d32kpM1elhFCzXc5zMWJssjkXneHkqMhIuzPlrPsSGTT6hygjg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hoCn3E/pQzTTN0szkW/LYSiWMGj6vXlT3MmMU/q8+AJvxRV6a/h2g2UwKODyNZNvnSrj61UxkmcSAoaW4nsPexVikIL279hvQkg+IuM+YWNx9ON6uN5hd9KRlcsJ/k9fNhvhBqKLOo7B/LUueCsO7L+56oG6qrNWYTTqr5cmS0Hf6mcdI5l9uEDt3YFqdSqUGk9CyP3X92f6dPypcoD9mYTOdHTI1BPrwCh7o9D54dwGu/1E/GTvm2kPBpht4N/h64elNeG/oMq0FVeZZEaW/dS/2snYTevj7KcF91ajTSCAJGiBiO4es6Sr9eSwgf9sYFZW8v2Rz7VSdGtJFM2K5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odecouWw/97cEZa5CWHUKgr52AFqBqcdcbWzRbgPHFE=;
 b=uueR1NvezLHJ3aAmnri1cd8YQyAYu/OF4o46JH6fz3LRYWK4wJMNMjKnnmbdIOcQ0c49iEMKqwssWoUN7MJqF83n9RCJ9DThacI1KfKFwU7JofzsE8bPz6wn1NxzinL8mqUt9JLyvacpdXuEMsPkgyWW51tOnYVt75rcl1W5vUWlkS3FlCQa3eN3oWrTZKYMJuBJlAjYY7XrqyTr21XQp136/A2RXNJNUn/DizFyeLmHl8nB0GrFVV1sBEGcV67YXtL0LKEhwnT6NnfUSA1FRK82TF5Biyd1agkCCAvMSuQpYhw9Cig7857sahjBAjeC8N2jIo7xi7jle/46etRYgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=odecouWw/97cEZa5CWHUKgr52AFqBqcdcbWzRbgPHFE=;
 b=Tbb+EfJ01dGxmjFTyDc8DvxRW6ML0S7WaOWCca7QC8/SL+aYcVfCh+c/56FaGFPrfCO+c1FXHeYBDyApWwSwhJWg8cW/pqvXQjveVLCv4tlZu1/GfwvC0SoqB3TnAJQCc6gdzSIWO1LROEIUpuh5QBzJa4iR+kWyY5CXN8NiXCI=
Message-ID: <2e0fe4b0-8508-428f-9472-34c0421326a7@oracle.com>
Date: Thu, 19 Feb 2026 10:26:22 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::34) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|IA0PR10MB7255:EE_
X-MS-Office365-Filtering-Correlation-Id: 982d4943-8edb-422f-a506-08de6fe463b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dlRXMnV3aVBNOHdpS3NrNi9hdXE1K3pCb3RYNzZ5UVdaZXB4QktJMmJRWVJw?=
 =?utf-8?B?YmdzZ3BWemkxRkY3TTBZOThUak0xVW10RDI2TUxnak5VeU8vZVJnUVIra3BQ?=
 =?utf-8?B?SnM1dmlwcDU0eWZ6eFU2REI3YXNPS0M0bDdtV1ZpNGFkbUlBMjdGRHpybmda?=
 =?utf-8?B?YS9sVHJkQWtCRHhLelkzSDVEWmZSdkVSemk1S211bThWaHNMbjU5ZGwwdGNW?=
 =?utf-8?B?Tk1EL0o4TEJiY0kzRjYzUUhKNy8yZTZCbGVNeFJkL0pQcU5heko0cm9NblpP?=
 =?utf-8?B?ZXh0aGhCbGUzS1d1SXZSelJTTDNaOFFDeE5TaU9CV2RaRm1QWlpEaEdIODYv?=
 =?utf-8?B?bjNQZis2R2l6UCtrcGRmZUdaS2RQQzZ2bUVCUGc1S1REa1UxeEVOQVRmOEVj?=
 =?utf-8?B?VWlWaEsyeE9UVEkyekozcm5VRkprYkZrN052VVkwSjMwRTV0cGhFSVNTZWRs?=
 =?utf-8?B?c0FiWU1oQnhiU0pDYTN0aTc4YUVRTkp1OEZCcExXdU5DMGh0RlA4L1BNbUtk?=
 =?utf-8?B?aDI5VHY5V3N4cDZXdVpYck9oZzlZa0tTcHd4dVgrc01PeEJJS2kvdVV2eEdW?=
 =?utf-8?B?VTd5KzVlbWwxWmhHS2FpL2M1dnRiaHJsN2JvTUNBbGFWSHBTc1FYM0Y5ZzBO?=
 =?utf-8?B?SmdJL1Y4NFloTStxcFFhM3VPL3NTemJjQmJMUWcwNHlmOEFKTGpsQmp2L3d1?=
 =?utf-8?B?MHlxSGp1djc0dlhaNlBQbDVZOFdnaXVNSnBsYzVSMlFqdnIwa2k3NDQ2bVk3?=
 =?utf-8?B?cGFWalVFZEtOeTdJNUZEOHB6L0I1ZXoveUJicEo2VDlwZ0xCMHlJeUpNZU5w?=
 =?utf-8?B?UHJoZVUzZEJ2MlJEMXl1R3I2OFRzZjBxYUtWemsxWjE4Wndmbm1RZlBjeWxS?=
 =?utf-8?B?UnE1bjVHbFRXWVNCdVVDOWZRNWYzU3ZzRlBZQ21vT3plaGlMT2p3SS85ZzJW?=
 =?utf-8?B?cUt0ZnBaNW12RVduWEU0RzRaS0xSRE00SnNGaGVZN3ZaQVRvYURwMmE1bmwx?=
 =?utf-8?B?a3BrcHcxNW5lbTZRNFNUYVRXYVVSWGNScE9JU0tWdjhJTGthSFlpRFpVTFlT?=
 =?utf-8?B?UEU3dUhIL0tRZGhqTm4xZGEzNlZVQ2FTU2xwcG1Tc0svenB0S3BWb1JFTFB2?=
 =?utf-8?B?aG9HM1FFZ2pnNGRFUzlCQ1FEWHlzK1U0VmR0RXJZVjFKcUJoRVJEbWI5Tm8x?=
 =?utf-8?B?U0VOTzV2MlBHN2Q0L3lsWFJkTVBzT1krcTd3eE1sSzRsVEROd2ZaczB6VHFV?=
 =?utf-8?B?UzhLZXhxWlA3MllKL1VQMENsWm5aVUd3a2NkWTI3dkdZZ0NBazFCRjMraEMw?=
 =?utf-8?B?cFo4QVpMb3BYZVRFbi9DMm01U2NKQ0tCelJyVFBjT2lveFdaa1Joa05LbmRU?=
 =?utf-8?B?alg3eFpXTVptT0pZOXo0L1E0SFlqUE5vUm96cms3K1dRSEJkV1g4cXp0UkFD?=
 =?utf-8?B?SXdHUjk4THkvWktuaE92ekl0dXAveXp0cjhyaFVUK1o0US95TXczRlcraVhQ?=
 =?utf-8?B?bkFnd0F5RjcvVng5UHJScjhZRmpWUTlqcnF5aDR6OUErbGYzN0dzM2N1R2c4?=
 =?utf-8?B?QXhKTXlZeHQrSlNGN1ByZ0lQWVB1WVBUemJPY2d3VGNUeENMcnhUUGwxV0l2?=
 =?utf-8?B?YkZSajJkaFJzVG9nZ1BkTmkrWGJyK1l3YnhFaEFySmdlTnprNWN6T3hBQ212?=
 =?utf-8?B?dUxVQzRjdHZqOVkxMlpUYnE4SlRSN3FJeE5rdFhrNmw1WWZLOU1yYVhRdDdn?=
 =?utf-8?B?QVZpNVpNRVo1Sk44Zkl1YXRRN0llT0FOZTZTeU16djB0YzR2Rm1SK1FLc1NC?=
 =?utf-8?B?cnZ5cUs2RHpjclBkMWxXTXlwSVRCa3JzNitFR1dtNmE1VU4va2JyZTlyaGM1?=
 =?utf-8?B?dFhiZDRIdktOYjVQc3p2QkNwcFprTTVMZ1ZnZHY4VUtYa0R1Mis1Q1poN3NF?=
 =?utf-8?B?bU9RbTRTSmZONFg4SFJmVXRXdHRCRFpucEExOE9mUkRyUGx3UEI5U3ZJekVC?=
 =?utf-8?B?Z1luc0JEQ3pmR0p4d1hxazRPNkowSFJraHJta0dzMXJOLzBPTmlRb1NDQlMv?=
 =?utf-8?Q?JgnmTn?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MDI3bm9xOGpOSGJURzNBV0ViMjlYaXROaERlTGlrZGFvSkZjYlJDRHBBSTBo?=
 =?utf-8?B?WGZwZHFnK0h4VHlqbzlmRmxObUVVZzJZQXZBemovN0pORDFPN1Z1aWljMFAw?=
 =?utf-8?B?MEx4dTNncUh5RE1MSmVDTm5mRlgwWGJQUE9INjBGSkRRd21ka3ozVlU4c3dD?=
 =?utf-8?B?ZWZWTDE2Qm11aUdYSVRxUHYzQ3pxNDY2d3B4UnJnY2xsaU91aVhTWVZMWmRH?=
 =?utf-8?B?K3AxdktqTXFuMUpCTEphaUdXbmExSkhuRy9yUmErSFRlVkx4bVQyY04vUzVs?=
 =?utf-8?B?b1lOVC9aWklLSVlsazUzLzJwMEZjbTVUL1c3b3MzUDkxa043TlkrVytobVM1?=
 =?utf-8?B?cWpTc1FleUxpVld6dVI1VjcyQUhuOHNya2RTdnRXSzNpWm1NbzVzQ2ZRaGZ0?=
 =?utf-8?B?WlFwUmJidmlkYk1sWUpGZGsrZEE4dEJRWUM4R2s5ZXNzZlpJL0Y4ZTFsVm9z?=
 =?utf-8?B?WUhDL01sNWhscDlsZjdEandNcjVVMlFaRlNLaC94MnhHNkNIR29CSENBbzQz?=
 =?utf-8?B?UEswN3BkTDVMN2hXY3UxTEkxU1RpOFpRNzNvM1d2aGIybTFYZXhQSUVTTEpJ?=
 =?utf-8?B?SEpkUzBydlZGUzR1aVpyc0NPNDFwZGlrenRiYVBxRklHRzYya1NRTTg5bHhu?=
 =?utf-8?B?SVorcXJUM1ZzT0MwcWNSOGhEMU4xMGs2TmJVcklSWjIrK2YyT054OSt4T21X?=
 =?utf-8?B?cTFrWmxNOVFXMjdVRVpqdXp5RGtqZDFabzdSUElwOHNzSC9OWmppRXl2MU5W?=
 =?utf-8?B?ZnNDU25jN3ErNFVweEMwWG9TcC9hUHJEMnQvTnF5emwzUFcwcFhSSWFkOVBN?=
 =?utf-8?B?dUpWYVhXdWMycUxDYmFFUzczcTc5eThqVU5oeGhoU0JScHV5clAxY0RmbmdF?=
 =?utf-8?B?WUxLaTJ0RElXRnAreENtdVJES09vSkxJS0M0LzlSMWpsNmkzQ0wrd0kwdHVz?=
 =?utf-8?B?VS9wYmEvQ0NSSkVZUVdCNzVzT2pmdHN0cG5UbjBGcm5xOWtZckx0b3A0R0JI?=
 =?utf-8?B?MFZFVzNVdGdtT0JTZmgrMXlrZ2ovREJUL3lTTTBqUWdRL21nSUxWR1VmZkor?=
 =?utf-8?B?ZGdHZTNXTWk3SDlUMFFYYUZFZFA0S1BWTGNpc0s0ZU83YTdVQW9mZUVuWUtM?=
 =?utf-8?B?a0pTQnlIMjZiOTMxTFhsV0lXSERSOHhEd1dyekF6MklTdVltWFd5WVhpM2xl?=
 =?utf-8?B?NGsvWkpFUzNGaDgxUE9zNXZWZE8wTElmQ3VBTmV6WHdsNXJuKysxNFl5cWM1?=
 =?utf-8?B?cFZMZndBVGtCTWgxUk8wN3ZlbUtBUVFjUWpPQnFweDduQlYxR3FuNjlSUkJT?=
 =?utf-8?B?dXdxalQyU1lVNTQ0ZzVaUW9RSkMyRGY2aHU5KzVPQmtabStMektXWjZiQ1Bn?=
 =?utf-8?B?bTRyS2F1QVRzZlQ0dUxaaW11c0g0UlcyOU1nQnVPU1hpMkVEV0VjRmhydUtJ?=
 =?utf-8?B?empURjNkWWJETjdrNFdqUWErUmV2YTFPdjJyZ2NKVnZ5Wjh4bWdxMXk2NHkz?=
 =?utf-8?B?WUFxYnh4SE95NnVWSVRXek9JT0diSE00YmRCeS9mOGdmYXY4L21uOTA1TGZ6?=
 =?utf-8?B?ZUMyNkJDbXBEdnZHaVI5bmFwQWlXTm5LVWZNc0M4YlMwTW1vZkNaZUxyWkJM?=
 =?utf-8?B?T1NuUzNQWUk3WXBQbGdjQnU2UnkydXp6VzJ3TjlDZkQyNnVpTWEzN2I1N3hh?=
 =?utf-8?B?TnNGcG44WG11bVBXaE1QQVJhMWpEZ3BUNWdDSTBOL0p0dmp5aWxsRlJKTDhC?=
 =?utf-8?B?QjdwRU5hWWUzTlJMZk1HeWszeDk5ejFnMWJJbEZQckFCeWYvUDlEaGorb3dM?=
 =?utf-8?B?YnNURmlwaHdNYjlaUE56UDRxSzV1WlJUVG5saytnTTRibWhJTEx4VnMvaXp6?=
 =?utf-8?B?ZGZkTW1rYWxNYjNHWGkzY0pQM3J6VVo3RElrQmR0bWVQLy84WlcrNU1IdVhl?=
 =?utf-8?B?NXgxS3crSER6NzcwVVpBY0EzUE9LbFJsZXZUV2x5dmM2TjZjMlVaYTdQWlpP?=
 =?utf-8?B?TElCZ0RheDJXR0IvOS9vb0VKM2JydGh1d3c4WWhuZHRsT1VrMnN1QXNIVVlt?=
 =?utf-8?B?c0VKbFJPL0hQZ2cyRmJTejBJWHl6ZG9jRk5jUGMrOGREYVZQNmtqRWMrcFRn?=
 =?utf-8?B?WGpNS3pTWlYxREM3QXk4VlZRa1IrVXdoeC9oVHNqb0lNdU82WElFbXpJbUQx?=
 =?utf-8?B?aUVaYnA2VnUycmdmTFVoNUpzanoweENXMEo1L254bzRXaktnOE5wcjhKY3Mr?=
 =?utf-8?B?c0NWTVFhQStlWDFleGN1cm80NFpYdUN4Lyt1K1JmY3ZQYmFFbVhSdmxDR0hZ?=
 =?utf-8?B?RGppQXExWnlyd2ZrSXZqdG9PdmFPeFFkNmV4dXNnUVErejFjVHhPQTZyNkRB?=
 =?utf-8?Q?36ogK0BQ406pvHGo=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	7Q0X8ljFi7vckws799npBg331epotRUzlkgPvAHYJDbJ6YvfYA559tJTJKaH2/auzisEYLw/FK/mYINGXD4U1kzVbB9CnW/B4SzoEdx0HB8m17ghVzZFPY8j7a0CKnPaCz75uiccLuvA+ILUN5OVaKpB+Ekt1a3hTmBDakRjvoIvqZqDv35JH79VMl1z7zqS57Llg3BSktk/Uuyse79lKkNN4DbKARA8SuKHSlpIf9/TtltOtfgb6+otnBMSarWr3g0H+U443VbBSMv5KLwI7RywJKHEJxL5aEg4xe23DtG19dAB+4SN9quSEjYxNb1w+wyKDAU9PLH7cCHeFoQiVq2yna0s5FG3ezcOEkJwPpG/abf79xejUjZgKIWVvIDZE8mdQGpyDa44TFJI1w0TrfrLwthtfDMMHmOf3kBRWSbgfkEBIDBXve4J6XoBLYCAB+hp4ED6KdcWErPF01MKRsoOBACqz+h+pNp6X5XZcPht47hjs9aHLkTZLT+Kh1XrROtK2zDion7WtnhW7w9DBjftEw2AxzJwpxcrYq/3WrxnrmlCcYPLaLyIY1HPJbRj/XN1Yn8hqn4rtZ/cuMnMnzOHoguAE3wuAooW6Pzx978=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 982d4943-8edb-422f-a506-08de6fe463b1
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 18:26:25.0533
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q5SFDLUkuB34ff5kFilvFflhlev5ivmG8vz00INk/G6SxshRw1BKrwuulQUp2LB00vf8XTaThihTLLB4EU9JNovRqLa2drVr6y/YuCxArkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7255
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0 adultscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2602130000
 definitions=main-2602190167
X-Authority-Analysis: v=2.4 cv=V6RwEOni c=1 sm=1 tr=0 ts=699755d5 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=rP-kOlJ0AAAA:8
 a=NEAV23lmAAAA:8 a=yPCof4ZbAAAA:8 a=57q6bi1Ye1_XLnp2ajAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=A60uPr_FG5abr3nATN9e:22 cc=ntf awl=host:12264
X-Proofpoint-ORIG-GUID: 1WRsSoyDNxmfM4UK-1ofiXK9ACCz5aOQ
X-Proofpoint-GUID: 1WRsSoyDNxmfM4UK-1ofiXK9ACCz5aOQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDE2NyBTYWx0ZWRfXypJi3cveJWc6
 rqOOZyd4ta1a1J4X80AIVz8o8YsjyHpNpuerouuoEPaSLvKnzY9B1ADukuWq/QuhjtRvXdc5wNV
 v0QRra7JsVGsKqRelQpjtqR2xd2YVJjshNHJsbl1MYiHMyjCWfz1U4apoxwFAMN5dWLdNit3Sd/
 C5XDY3Fe2B7zqJV4RuqnL5JCAmX6QjIRBEi8xQQs/q04xTcmDIQuc0/pEfOe3j+iIyybtZmth0j
 2w/+xOLFCqq/Gdn2CMKlE159CSilPfuMxq/ntBVw/hFCRm3q3XXJSQyfjAPqICQSWE/JHhbDkGU
 q+YkO7RlkezqTDNxaJWymt12hs+CqGtkTI6km7mJ3+Lgl0QysHiY16LaVlrdoFWGGELJlLbAOhK
 x7X/nT5nzF0QtToKeu1ysNkrMveVO/ZVkvzh+AYpA6NsNqQQdNxKvcomEgvxF6ZpYqN/Z0OmqPf
 NHp6eJNAdAUA+EVKdAJ94XEcp5t281Byo2DK7Ci8=
Subject: [oss-security] Default IV & other issues in aes-js & pyaes modules, &
 strongMan VPN manager

https://blog.trailofbits.com/2026/02/18/carelessness-versus-craftsmanship-in-cryptography/
reports:
> Two popular AES libraries, aes-js and pyaes, “helpfully” provide a default IV
> in their AES-CTR API, leading to a large number of key/IV reuse bugs. These
> bugs potentially affect thousands of downstream projects.
> 
[...]
> 
> Reusing a key/IV pair leads to serious security issues: if you encrypt two
> messages in CTR mode or GCM with the same key and IV, then anybody with access
> to the ciphertexts can recover the XOR of the plaintexts, and that’s a very
> bad thing.
> 
[...]
> 
> As you might guess from the names, aes-js and pyaes are JavaScript and Python
> libraries that implement the AES block cipher. They’re pretty widely used: the
> Node.js package manager (npm) repository lists 850 aes-js dependents as of this
> writing, and GitHub estimates that over 700,000 repositories integrate aes-js
> and nearly 23,000 repositories integrate pyaes, either as direct or indirect
> dependencies.
> 
[...]
> 
> The default IV problem
> ----------------------
> We’ll start with the biggest concern Trail of Bits identified: when
> instantiating AES in CTR mode, aes-js and pyaes do not require an IV.
> Instead, if no IV is specified, libraries will supply a default IV of
> 0x00000000_00000000_00000000_00000001.
> 
> Worse still, the documentation provides examples of this behavior as
> typical behavior. For example, this comes from the pyaes README:
> 
> aes = pyaes.AESModeOfOperationCTR(key)
> plaintext = "Text may be any length you wish, no padding is required"
> ciphertext = aes.encrypt(plaintext)
> 
> The first line ought to be something like
>     aes = pyaes.AESModeOfOperationCTR(key, iv),
> where iv is a randomly generated value. Users who follow this example will
> always wind up with the same IV, making it inevitable that many (if not most)
> will wind up with a key/IV reuse bug in their software. Most people are looking
> for an easy-to-use encryption library, and what’s simpler than just passing in
> the key?
> 
> That apparent simplicity has led to widespread use of the “default,” creating
> a multitude of key/IV reuse vulnerabilities.
> 
> Other issues
> ============
> 
> Lack of modern cipher modes
> ---------------------------
> 
> aes-js and pyaes don’t support modern cipher modes like AES-GCM and
> AES-GCM-SIV. In most contexts where you want to use AES, you likely want to
> use these modes, as they offer authentication in addition to encryption.
> This is no small issue: even for programs that use aes-js or pyaes with
> distinct key/IV pairs, AES CTR ciphertexts are still malleable: if an
> attacker changes the bits in the ciphertext, then the resulting bits in the
> plaintext will change in exactly the same way, and CTR mode doesn’t provide
> any way to detect this. This can allow an attacker to recover an ECDSA key
> by tricking the user into signing messages with a series of related keys.
> 
> Cipher modes like GCM and GCM-SIV prevent this by computing keyed “tags”
> that will fail to authenticate when the ciphertext is modified, even by a
> single bit. Pretty nifty feature, but support is completely absent from
> aes-js and pyaes.
> 
> Timing problems
> ---------------
> 
> On top of that, both aes-js and pyaes are vulnerable to side-channel attacks.
> Both libraries use lookup tables for the AES S-box, which enables cache-timing
> attacks. On top of that, there are timing issues in the PKCS7 implementation,
> enabling a padding oracle attack when used in CBC mode.
> 
> Lack of updates
> ---------------
> 
> aes-js hasn’t been updated since 2018. pyaes hasn’t been touched since 2017.
> Since then, a number of issues have been filed against both libraries.
> Here are just a few examples:
> 
>   - Outdated distribution tools for pyaes (it relies on distutils,
>       which has been deprecated since October 2023)
>   - Performance issues in the streaming API
>   - UTF-8 encoding problems in aes-js
>   - Lack of IV and key generation routines in both
> 
> Developer response
> ------------------
> 
> Finally, in 2022, an issue was filed against aes-js about the default IV
> problem. The developer’s response ended with the following:
> 
>     The AES block cipher is a cryptographic primitive, so it’s very important
>     to understand and use it properly, based on its application. It’s a
>     powerful tool, and with great power, yadda, yadda, yadda. :)
> 
[...]
> 
> In November 2025, we reached out to the maintainer via email and via X, but we received no response.
> 
[...]
> 
> We identified several pieces of software impacted by the default IV behavior
> in pyaes and aes-js. Many of the programs we found have been deprecated, and
> we even found a couple of vulnerable wallets for cryptocurrencies that are no
> longer traded. We also picked out a large number of programs where the security
> impact of key/IV reuse was minimal or overshadowed by larger security concerns
> (for instance, there were a few programs that reused key/IV pairs, but the key
> was derived from a 4-digit PIN).
> 
> However, one of the programs we found struck us as important: a VPN management
> suite.
> 
> strongMan VPN Manager
> ---------------------
> 
> strongMan is a web-based management tool for folks using the strongSwan VPN
> suite. It allows for credential and user management, initiation of VPN
> connections, and more. It’s a pretty slick piece of software; if you’re into
> IPsec VPNs, you should definitely give it a look.
> 
> strongMan stored PKCS#8-encoded keys in a SQLite database, encrypted with AES.
> As you’ve probably guessed, it used pyaes to encrypt them in CTR mode, relying
> on the default IV. In PKCS#8 key files, RSA private keys include both the
> decryption exponent and the factors of the public modulus. For the same modulus
> size, the factors of the modulus will “line up” to start at the same place in
> the private key encodings about 99.6% of the time. For a pair of 2048-bit
> moduli, we can use the XOR of the factors to recover the factors in a matter
> of seconds.
> 
> Even worse, the full X.509 certificates were also encrypted using the same
> key/IV pair used to encrypt the private keys. Since certificates include a
> huge amount of predictable or easily guessable data, it’s easy to recover
> the keystream from the known X.509 data, and then use the recovered keystream
> to decrypt the private keys without resorting to any fancy XORed-factors
> mathematical trickery.
> 
> In short, if a hacker could recover a strongMan user’s SQLite file, they
> could immediately impersonate anyone whose certificates are stored in the
> database and even mount person-in-the-middle attacks. Obviously, this is
> not a great outcome.
> 
> We privately reported this issue to the strongSwan team. Tobias Brunner,
> the strongMan maintainer, provided an absolute model response to a security
> issue of this severity. He immediately created a security-fix branch and
> collaborated with Trail of Bits to develop stronger protection for his users.
> This patch has since been rolled out, and the update includes migration tools
> to help users update their old databases to the new format.
> 
> Doing it right
> --------------
> 
> There were several viable approaches to fixing this issue. Adding a unique IV
> for each encrypted entry in the database would have allowed strongMan to keep
> using pyaes, and would have addressed the immediate issue. But if the code has
> to be changed, it may as well be updated to something modern.
> 
> After some discussion, several changes were made to the application:
> 
>   - pyaes was replaced with a library that supports modern cipher modes.
>   - CTR mode was replaced with GCM-SIV, a cipher mode that includes
>     authentication tags.
>   - Tag-checking was integrated into the decryption routines.
>   - A per-entry key derivation scheme is now used to ensure that key/IV pairs
>     don’t repeat.
> 
> On top of all that, there are now migration scripts to allow strongMan users
> to seamlessly update their databases.
> 
> There will be a security advisory for strongMan issued in conjunction with this
> fix, outlining the nature of the problem, its severity, and the measures taken
> to address it. Everything will be out in the open, with full transparency for
> all strongMan users.

See the full original blog post for further details and some strong opinions
omitted above.

For the strongMan issue, see:
https://github.com/strongswan/strongMan/security/advisories/GHSA-88w4-jv97-c8xr

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

