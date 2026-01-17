Received: (qmail 9361 invoked by uid 550); 17 Jan 2026 20:56:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22126 invoked from network); 17 Jan 2026 20:54:06 -0000
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; bh=zku/TP/6uvDjXZAKkNz8PZgx941dFPNboX9u4Kgezho=; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:x-icloud-hme; b=B50te//0C7AlDjN2ayFelmzqSXbpzAZmoqgcwtvSk8V2nfzR9FupE2upkt9hkO212eXdUBiIUAEM39Ks9njWfu7fjtK4bLoO8l6kbr0knbw4GcQobqCLq8OigSnguQjHihsktZOfVtFSlACEicm/tPKEllZ59Gald6zuYnV+P2mNw0dnu74Fgbp20vshzRnCAQxGmeATqXXUEC3gou6i0OSNh3V5tg43DaL7MoEMD/mwaslATzKakYSMLFVXRyRgy4arVJjnFhpEByWzGBFbLnh6DobGn/VOnStAtYc3wZlv3vDFkrF+Y4YwrcCRd1SmEXMhrsTPvKhGmxvmNORnjA==
Message-ID: <61dcfcad-c04d-4cef-9d2b-105e97048043@icloud.com>
Date: Sat, 17 Jan 2026 20:53:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
Content-Language: en-US
From: Chad Dougherty <crd477@icloud.com>
In-Reply-To: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Info: v=2.4 cv=S7TUAYsP c=1 sm=1 tr=0 ts=696bf6e4
 cx=c_apl:c_apl_out:c_pps a=azHRBMxVc17uSn+fyuI/eg==:117
 a=azHRBMxVc17uSn+fyuI/eg==:17 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=x7bEGLp0ZPQA:10 a=3XhPhNhbD8YA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=Q9OsIELaAAAA:8 a=bw59Z28sGjVWjE1XLc8A:9 a=QEXdDO2ut3YA:10
 a=gfz7QS1vMOIA:10 a=78jpVRrkZUMA:10 a=hijkYCPsXXSMtj_wSbGK:22
 a=P1Ju-BDpGI1GwXT1qGEa:22 a=ZRVlrNeDUIZ6ivr2ZCR6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE3MDE3OCBTYWx0ZWRfXxdV9SjV259u1
 f5Y7xusvvLAmA4ZXV+Bd9DntGhU9BXLXW2Z68qgPKF7Srhv3nRecN8CKoUthiZ9zIObZO6xoG6J
 hZWOymY+s+GOK+ZIGRIvhxy2LyfZZc2OqKoeux+juXFS24vY0k7QWtHn6yhH7yeNe4U3noZtz3N
 aqPzgX70IEGHWmTrOVqR0fFxIx8buVFRL5eyrD0z0wQOA2AhRPzUQ3jPIwbCZYqMcxf2b4Bpc5Z
 Uw47VTY4ERigNzPgtFkaNNeMIXYkugIoz0Dj14HirX/ZXsp9v+8sl1fN//hlVMKlFZkxR11JSg5
 PDyzy7KEh1YwXl4LION
X-Proofpoint-ORIG-GUID: _U--U45912mheE3DE2jwrjAKolJFWEej
X-Proofpoint-GUID: _U--U45912mheE3DE2jwrjAKolJFWEej
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999
 clxscore=1011 suspectscore=0 phishscore=0 classifier=spam authscore=0
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2601170178
X-JNJ: AAAAAAABNcVDQoNND2S7Oc42PtaE73EC3sg0PiRFR+5MSYYfJDN2hWXsTE8hKLidMtFu2sC5QMnkl7RUx2HtI/M0VcKMdXCyyCpoPMS4xpldZOdTxD2VS2dsnhH68nS5MuY3ElsPaCK8UuvuRGFzMjQND49Gml+/8KR7Fs3146mdCkp6hjoLmPhev5OzA6w88BrHlk6gSO0xKFXED5HiOWD57HunuJqr9HanaZ8PyrJoZG0HoOPxQTk/XFyYpgGgqSRvfjK3+fFiKZU98vT6diz+RwfKkjyGvpWViRuQC71vtKOu1DRUA5o6Zm77Zek+41G1PJj4TgcXk1aigV4a08IrvAzmCclVOZg3kpqscn9BKV0ytimAsgkyllt6lldvPS97kxxUmZ8C22X/3NTIuKpEWDwUvyrf9TeryuptMioor2SMc0sU3lgg+PEYSiepXDD5rCEGqRJ7ID+p+wwatiDCAD2Nq4vaPzk57H2jqqCWrV3B7353ze8GrId4Lq8fVeLaVKN7CV7WsMYjrLvh6AsCKlT+bpH4cdVAogJ3A1hRI5D77Qy6JonXn+cftb0hum1TpjbFFhCBEN7d+X7rZSyTA9IhpSBe7MbIqWC7bQsKDAQhVvj96HG2IXhPEGZnR6Rn4/WTct3Pe8aG3Lxbdjz3m8lZhVwhYUDAlQAadjjtQnnXVtni8G07wdvNoosAataF3ksGsoXtV8l2cqh4RjpGkrenlyE=
Subject: Re: [oss-security] CVE-2025-8110 in Gogs self-hosted git service

On 12/10/25 11:18 PM, Alan Coopersmith wrote:
> https://github.com/gogs/gogs offers a MIT-licensed self-hosted git service.
> 
> https://www.wiz.io/blog/wiz-research-gogs-cve-2025-8110-rce-exploit 
> warns of
> CVE-2025-8110, an as-yet-unfixed vulnerability in this service which 
> they say
> they are seeing being actively exploited.
> 

FYI, this was reportedly fixed in https://github.com/gogs/gogs/pull/8082

     -Chad

