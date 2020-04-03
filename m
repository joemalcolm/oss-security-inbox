X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["469" "Friday" "3" "April" "2020" "15:19:06" "+0000" "Alan Coopersmith" "alan.coopersmith@oracle.com" nil "18" nil "^Date:" nil nil "4" nil nil (number mark "        alan.coopers Apr  3   18/469   " thread-indent "\"Re: [oss-security] CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14010 invoked by uid 550); 3 Apr 2020 15:19:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13992 invoked from network); 3 Apr 2020 15:19:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=mime-version :
 message-id : date : from : to : subject : references : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=8lVsTGjC56lM89fxiXtFe4PoduiGOqYTES+Y7yul/8U=;
 b=miYEJES+8BT6/QqA+fPwi1Wj8Lsa9ENBI+2ABt/hVJYWAtIb/p+gbfTc65AvORLPlrH1
 x0igEwAWExd8OCC+9uFtWdpQzMtWU/NxxkVJt9x3Xd9yLIaQ75iZzFp0EcMhSJISftZ1
 SNrWc5bxMmMlk/kG5t+Z7bFtcUXsnrIgK67iW7O57wddmo0v6JYG/JZPAvkB0HtzYnaL
 +efI+Ffso9seddEqc+GeynKIWRLyBopKpXkqndr3FyPwXj7co513rXz2AYEwyWmT8qAG
 HCyHm8xqx78f/0W622AC7E0PgCyyfWFu3xrgnzWBFotB9pInPVPs4htx0hOlGAM2PlNf HQ== 
USER-AGENT: Mozilla/5.0 (X11; SunOS i86pc; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
Content-Language: en-US
MIME-Version: 1.0
Message-ID: <dabe5b5f-2534-2c3c-a1c9-37bee5469ac1@oracle.com>
References: <1585745652.JFUZVINU@httpd.apache.org>
In-Reply-To: <1585745652.JFUZVINU@httpd.apache.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 adultscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030134
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 adultscore=0
 clxscore=1034 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030134
Date: Fri, 3 Apr 2020 15:19:06 +0000 (UTC)
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-1927: mod_rewrite configurations
 vulnerable to open redirect
To: oss-security@lists.openwall.com, Daniel Ruggeri <druggeri@apache.org>

On 4/1/20 5:54 AM, Daniel Ruggeri wrote:
> CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect
> 
> Severity: Low
> 
> Vendor: The Apache Software Foundation
> 
> Versions Affected:
> httpd 2.4.0 to 2.4.39
> 
> Description:
> Apache HTTP Server 2.4.0 to 2.4.41

Should the versions affected have been to .41 as well then?

-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc
