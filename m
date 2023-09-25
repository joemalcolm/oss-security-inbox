Received: (qmail 28590 invoked by uid 550); 25 Sep 2023 17:24:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28560 invoked from network); 25 Sep 2023 17:24:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=TCW3kzsBhdEXdk5EorOUDw+1tI5DDQN4HqC4owohasE=;
 b=VhGNa2WGcmbT+5vSnkil5fjCWVnhVNxGibHESLE0xhPtNKA8oGI8rdTcmeJvhYIOFKkv
 obTbReoOivjC7TAnAffP3SBYnXgh/s6oFjzxRLkswRZCEkWAb2kk/MqMWwN02Mf9BxW9
 ahI2qg7i0nMhSCYR8PdzDKEsY6wbc0U68pb10ipIG9pGpivCVaFxM3kD/LeZWr7RJwAT
 ui++ZHP5VHZmtucdp9HmDhizKwtCHJz1tjq3PdMvjYGSbAgGYcLTpdX2ReM4+k3bB/T7
 WfOQud8C3pKfLKJBPU4aYDO3zD8x340SLYZsDxjwCqchdA6qyWP+Kaa1z8HZ8Iq4+KE/ Fw== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rp7YpPfXjQ6nYNg9IgPujUkZeGlHS+iMjcl1YTy1buNyOro+6YMwKWC4cm2umMjnCDJyVUts0EjbQCANYHngbw7llIjLv78rXoRvHN05SdCM7vD8/O4KioglexYJ+X16cDLTTIzSxPD9Fw+eMWMkGofcyNm/KfIAMkFbY6Zje6NVqqJIrvocCE45Yp1iTT7or2gnozm2AyCSY+BHOyHl6bZdSGi0sGWXfbVoNl78L9UppzMPwEcPw4lvJUUrb7wJCwWjquW2NjfrcFJyIuQMKJuh1CIIa9a7rup8QfOHf4isoFhf618CbPlEZI80RYETL3eykLOTGrsYKOCqFqbnIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TCW3kzsBhdEXdk5EorOUDw+1tI5DDQN4HqC4owohasE=;
 b=NhH+R1hb4B6+oJnFA0nB5D7aWmrERQEJyGu9ThpOoUnF5kD9d2+hzjVm23sQvTf/D8Njj0dHLmdtfc7OnRUAX3SBgRKroGWrjfwBMZiQwUyAMIr9JZpmj2CxyjfMOIOvrMfdlF4gloc8XTJ/mPTAwlphghUevGcRqBm3QUGaZ80eEzVKcUEFxeLnhb2KH4PzfqEShvOJxVqLE4fZG6l3WAYCT7iYseR3v7FqFAj+K0C1zKUV/+Fd9Im75oQYNO8F+pnx84HQLrLxh9tyXwr7dITuJuv+T5M5mZD605PV7zQeDAQUpdvExf9MOOhM6b8uvVs8uoUBIDDO+5Ntim7rNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TCW3kzsBhdEXdk5EorOUDw+1tI5DDQN4HqC4owohasE=;
 b=us3qXUXr1+w5QnOzRSqX+1OERlLxpHERlqdH3wFMrgpInvmnMN6t4TkxHG6Li/1F44mL4b2u7IVOmGhXKi8srVG5lMQmezUATUxG52RVBvTrgFSnvrp10CtxfNBx959/eHdBJx6QoohRu3l3laSqjlUcmh/GWN/T9TKZok04CnA=
Message-ID: <1128980d-952b-4936-b75e-62e27747686e@oracle.com>
Date: Mon, 25 Sep 2023 10:23:25 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <6EBBC128-36D2-4262-88F4-6889E9E6DE1E@mnx.io>
 <20230915210906.GA22532@openwall.com>
 <36F38D40-5F90-4E1B-B7A2-121431A3E6FE@mnx.io>
 <20230922172755.GA18909@openwall.com> <20230922214006.GA20989@openwall.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
In-Reply-To: <20230922214006.GA20989@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DS7PR03CA0291.namprd03.prod.outlook.com
 (2603:10b6:5:3ad::26) To IA0PR10MB7303.namprd10.prod.outlook.com
 (2603:10b6:208:40d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR10MB7303:EE_|BY5PR10MB4178:EE_
X-MS-Office365-Filtering-Correlation-Id: 7164124a-7f35-43e3-1a50-08dbbdec2268
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Vl1kwat1yXc4f5oH6kThjwyO5x42cDsaPKNJodd6iXAjpytmrJiSbamREQHhvpwuUmSr5ueu/acZjFnX/HVic7U5Lo9dyLmsYQ7a/9B9l5vegy5DRNUJLCKua/Ag4a3rp+i/oFgffu/DJTstv8v9p/ZgsZ5l3tezCbhzJTkCt7RCuae08wTV1BDHI8WteVI9fS3Z8ShnHSADG+WKE4t4O6QZBJZ9LUGogCh9jWYbxUcCSS1F+3f+VsIet2cj8vArhkpUr8iNsbmzLK+UQplRKR64mGqC4asMscYcg2hW+FpoNym1Lac/mwB042qus+5V5xJFFWLqmut+dlfHoCbnD2uwRMMONaKFyBCRCp8u35D25cl6M1A/z/W5NN1FPQsqSrmwWAzDnNXS0STwHF/0XWHq1XAdBeclTJZrIHGcedNALyKYJKqs3MoL0hDDP0gRht5PjGuhUbZzdg4D1V1x5o2tNUz1rXYQ5TiEtA5HnQzHlhDXo+xU/4zZ2HINf9hbHeEOHPLQsS7h8ae702LXnIS0s7CgOPnDXe2YaUIAzp2P1XDPE99p/RAes2VgrPgADzujZOkHkRrvJrAaYlozV5CeUvVHS/F/iETM368Xy7jrjNaho15ltw7n+NCtVD19i92EHbxXPJqDmGoSwaeQCSgwtiktCSJQ8P2OMz4VVC2ubDbkyJs5KklW6fOBWlLm
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR10MB7303.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(39860400002)(366004)(346002)(396003)(230922051799003)(186009)(1800799009)(451199024)(6666004)(478600001)(966005)(26005)(6486002)(2616005)(83380400001)(36756003)(31696002)(86362001)(38100700002)(5660300002)(53546011)(6506007)(6512007)(15650500001)(66476007)(66556008)(66946007)(316002)(6916009)(2906002)(31686004)(41300700001)(8676002)(8936002)(44832011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bFlVQkpHNVJ3bFh5emlXamFUTnJvdGcyNWNVMm05RmY5MitiL2VPc0xUODBO?=
 =?utf-8?B?cVczY1hzQnNDYnR6R3h2UVkxY3Vhdkw3T0VxNWNjSXd1TEFpbHJlUVpiOHdL?=
 =?utf-8?B?VU9ueXBSR1Iwelk0WGd0TFRxeUZML2Z2dE5zVDZJZFgrbmJGZjIydWZJdmtu?=
 =?utf-8?B?ZGtmUndUdHUvYXQxRUxzMWhZa1BEUjA3Y0lkYTQrR1k5SWljZ2IyMkhzbW9M?=
 =?utf-8?B?ZEZjRDh3TC9MM0FrSmZzdFlPdTR3RnZJTTFxNzhRS1BIS0ptK3pEQW1pbksx?=
 =?utf-8?B?ZXUrdmtYc3pSSkJYV0xvMm1pM0ltK3MyUThrdVhZbk9QcjRGMXJDZ3d4OWE3?=
 =?utf-8?B?Z1hJRERGaXlJbnI3TzhJUEJXdFpEcVVoTUg1amZyaTR5aURSMTZjR1Q5RjJI?=
 =?utf-8?B?ZWFZdHJQTVlGMkY3TVRSSWwzOHZGdnVEeDl5cTN1WUg1aURiZ1liK1dLdkt0?=
 =?utf-8?B?c05DeG9iVG1YMVRKaVdKTmdJZnZNWUNRMnJwV3F2M3VIY3JSWWwrd3ZjZkt4?=
 =?utf-8?B?bG12aEM2RTF3alJBUVZ1Qjh2TzY1VnJBZUtlQnRhSXp4aE8yeXM1MzluTG0z?=
 =?utf-8?B?eDdBa1JLaDAvZjhMSVk3QUk5b3NKbzA0ZHhiam1RSXNaZm1rcjV3R0Ivd1Zw?=
 =?utf-8?B?dGo1d1IwekQxdS9oQURPWXBwWVR3UWI5T3FLUXpXWCtuYU9HdWU5dWQ1a3VG?=
 =?utf-8?B?QXlNOW5YVXBhZjlSTE10ZldBWVFMbEl0NGFOSnRRVFdnU280dmoyNmpEOWpO?=
 =?utf-8?B?Yk9BMUFkbVJwWTJONTA5UngwZjhEMTVIREpwSlVWUUhpOENjaW9YOVVGQWdx?=
 =?utf-8?B?ZG9FKzFLMkNzOG5qeTNsZXBCTnUvOWh6V1ViMWJFTy90dS9XMlprMGFiR3A1?=
 =?utf-8?B?NlJucVF1Sm5GVytGdFY1SGFLZ1krU1RVNEVXclBOcjF6L2JmMXNRbWZDQVZ0?=
 =?utf-8?B?ckt4ZXNJd0lGRW1OeHVHWSt2dEkxb0F4ZHM0ZzBzbnNSVjV2b2xteXhSWUFl?=
 =?utf-8?B?eGNQZmc5dTNiajNZcTZYTmdxdHBXK0I5WnlzVW1Iby83emg5OEhaOVVqOGQ0?=
 =?utf-8?B?L3BwZnFGT2N2d3ZIeXZjSFd1Z0xCZUtQdUZJZU9iVVVucjQ4Sm02TmhjT1lE?=
 =?utf-8?B?N3IxelYxejZ6SUdkZ0o2V05zdjhNVHZJdmhsYnJIOWdaOXdOSmNSald0Q3RV?=
 =?utf-8?B?UGUyL3U3N2ZmWFYxRWhlTUJMcXBwOFFheEMxNHNJdGlxekpWWXJxelBRTzha?=
 =?utf-8?B?K1plVUNtVXRqOTFHK2VVNlV4ays1b0J0YmRaYXIySytmNElDZ01NdlRsZDJX?=
 =?utf-8?B?b1l4aVlQWCtERHllUyttdkVob1l2UVFLaGZmOVlqU1VMYk9IZ2NqRjBOSy8y?=
 =?utf-8?B?QkJtd0NLL2VHendvczFiRURCcmZuVml3ZU4wM0pvQWJXU2l3QkpSRlVwV0xI?=
 =?utf-8?B?WnloRW5HZVJHVHRFVWliZ0JnSjFqdG45ZTRua1IrYkhkd3FIcXdldWlIREQv?=
 =?utf-8?B?MlJLREIrUFJjSFFjTWF1VElFVTV4SXlUQUh0WXhkV0pvTXJvL0wrSTVOUXNk?=
 =?utf-8?B?b3ZQMktyeWVFUmU5SlUrSXNaaWR5NjJQRUFQZnFQTmU4ak5ra1huSXRaK2pv?=
 =?utf-8?B?akh1aGNmb3MzMzJsRlFiVEhIbHVFbHVSVFRBSEFPVVlRdmJnRElVZ3FoOUZM?=
 =?utf-8?B?Z2luYWhpQ2lEK2g3VXM4Y2JLaVVYd1BmTjNlRDNxamlOSzJwVnFnbmI5Wndn?=
 =?utf-8?B?dVBCL2dxcncrWllvVytZTVVjTWlrcXJSMzNSYmlUVC9HMVJFWmdrT0RLa1lN?=
 =?utf-8?B?cmhwaU0xVGhneUFSSlNoS0VlOFZFdjlWNEMyaUE2SU1XY002dmI5anlpdUVm?=
 =?utf-8?B?WlJibDZyRXhUVzBxbFJQN09YOU5TekVlOVJDZFZpOXZsaTdRZzdNZmowWkV5?=
 =?utf-8?B?aVp5Wk5VUHNoTGdYdnd0dzlUNm1OaThnM1hBUzNCR0lKbjZhZnZCamtMRGFl?=
 =?utf-8?B?Vmc3ekF1VlA1YzVIbStjNnJqbGNPWmZYQ3hGZ3FGeFBkT1dZamJQeWJpNWl2?=
 =?utf-8?B?dUxnR1grdGI1UXlzTFNIYnYyU08zWDVnblJqMXd6NEh2MU40MjIyRStaUXg2?=
 =?utf-8?B?Zy9Xc2xRVFJ2L2Y3c1BOTHlYUkZPczVBaXRxY2dXaW4wSjBpREh4YnFHMTdn?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kyh78zr85CR6+A5AlOSp1jiejIZUIh2W+n7gx64gjgxmJRpaM3tHhesrgF+WmehKW4+/qSoA0gTXCexzcjIBzafihMndQOQwTY5x/4FOT0K3JEoA88CdukzBD2hxbF4CjUp0JV7OQ5PiRGQCuFw9wrWSXPSbsuEXT7PPIH8jI9/HQ0+erim0HYqKnuGMVVoNSnBF44UAp3JdBFhboBHPVmpbWNCHyRe2g9gNDUYZ/sLmi3ns9l8XEecggi6Bj3zOakXq04uqLCjuWqs6aUVdx8cO/wpVPLBcA3QVydRYiYQFL6Sm9BkMg7KrARISo2kdvmTeWiJKKTFdmrA6ZA+SqHjLBOzpdRu1WDzM0fkJXkjaFl851k/62J6l/jJ1kLCsAp2Qce+Vx/vjAYKcsL3yfBROP51T3oQSuG/KQoydBV9mW92A6VhIgVqd1RJZwPo7cETBcKrUKEXTjIe6ORfc1iT7v+mq4nzJ46/bmZJe/QWPdB16dt/GzhDO73ijfLqru3eKq61A/8VgrfA4lXENlODxFhk++qhnm6ss9pqTtgefQHuIXR2HQ01/SNhD2DnbYm9ty6nyysYkyuUwWCx73EPCP8sztkuY2r0wCgTnsESo1xhZo0kbVYNpi9ENP5q+0SVIVCfgcs46Prm8FV22ewwbO19BUP9bfg8X74DCgU8Ag6Mt/csXJ9ZqLpsa9VSfUDRXphaAx8x4+H25ZCVNw/a3JMTfQYx2VtA5EzwrT86x8cE61YKcoDbpXygFFMJRZwEorzhtoVEIF8gKfJVEQA==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7164124a-7f35-43e3-1a50-08dbbdec2268
X-MS-Exchange-CrossTenant-AuthSource: IA0PR10MB7303.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 17:23:29.2071
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AS1RdHFVy5f8faqHWcp7TSLfclgB/YwJo9rMIv/U1TmDVjd9m6lRec0/22/aNGyzGFv5ax2eEdyyNCkuYQ9Gh0l1J9PQS1Xs7yM7AtP2qaw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4178
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-25_15,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 suspectscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309250136
X-Proofpoint-GUID: m10dh-JN1ZkYogrfltBkp8qtPBxKcPRn
X-Proofpoint-ORIG-GUID: m10dh-JN1ZkYogrfltBkp8qtPBxKcPRn
Subject: Re: [oss-security] illumos (or at least danmcd) membership in the
 distros list

On 9/22/23 14:40, Solar Designer wrote:
> So I think we can accept OmniOS as new distros list member, if that's
> desired and Dan would represent OmniOS on the list. 

As an existing list member with familiarity with the illumos distros,
this makes sense to me.  Membership for the other distros in the illumos
family (SmartOS, OpenIndiana, Tribblix, etc.) would also make sense.

A membership for illumos itself would make sense if things like the
CPU speculative execution vulnerabilities were shared on this list,
but they historically haven't been, and as recently discussed, their
long embargo period means they probably shouldn't be, at least not
until everything is ready to release - which means kernel & hypervisor
makers need to get notified of the changes they need to make via other
channels (which the major CPU vendors already have).  Mitigations
that require only microcode updates would fit the distros list,
but since the CPU vendors have their own notification channels
for the other issues, they've been using those instead.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

