X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Tuesday" "25" "August" "2020" "12:22:35" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<886744ab-08e1-4602-98a0-828cea1cda17@oracle.com>" "22" "Re: [oss-security] X.Org server security advisory: August 25, 2020" nil nil nil "8" "2020082519:22:35" "[oss-security] X.Org server security advisory: August 25, 2020" (number mark "U       alan.coopers Aug 25   22/712   " thread-indent "\"Re: [oss-security] X.Org server security advisory: August 25, 2020\"\n") "<20200825153714.GJ30064@timmy>" ("<20200825153714.GJ30064@timmy>") nil nil nil nil nil nil nil "Re: [oss-security] X.Org server security advisory: August 25, 2020" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3487 invoked by uid 550); 25 Aug 2020 19:22:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3467 invoked from network); 25 Aug 2020 19:22:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : cc : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=apexxwyjORw92ZLU2o2GjKVun7Lu7R0Fu6vNb45wyyE=;
 b=nV0sx//KqchbV+kGfjAssDf9WFJ2fgK6zT/pbleSuvGHPKsabPCFXzrUjp69769/iXDu
 873slOWaNGejVIGQQRsJGoleD6ScTY1fQMkUrQrYCuKh1wpBxTyehCMWdXsRZzrzcJAH
 xv74X6cVbep7chlkhYE74CQf4DLcQpSzCKCB7kiGzFZet0Xx+xADvRWJt2c976DtLNVr
 XxK4jM7/q4BhO6RDLUm4OLXROpHaP+AlczI4bcpHHHo9XYtQb04RYeBeFXO0eNIGYRwn
 NSc6BsvZPQx5IYO6ztqSX1epJvydiMTaCGu01gAEq3CA94o59pWj3tTFhx+784Sjc7Mp bw== 
To: oss-security@lists.openwall.com
References: <20200825153714.GJ30064@timmy>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Cc: "X.Org Security Team" <xorg-security@lists.x.org>
Message-ID: <886744ab-08e1-4602-98a0-828cea1cda17@oracle.com>
Date: Tue, 25 Aug 2020 12:22:35 -0700
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200825153714.GJ30064@timmy>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9723 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0 bulkscore=0
 adultscore=0 spamscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008250145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9723 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 impostorscore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1034 mlxscore=0 lowpriorityscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008250145
Subject: Re: [oss-security] X.Org server security advisory: August 25, 2020

On 8/25/20 8:37 AM, Matthieu Herrb wrote:
> * CVE-2020-1436 / ZDI CAN 11574 XRecordRegisterClients Integer Underflow
> 
> An integer underflow exist in the handler for the CreateRegister
> request of the X record extension.

This entry was missing a digit in the CVE id, the correct id was listed
in the later half:

> commit 24acad216aa0fc2ac451c67b2b86db057a032050
> 
>      Fix XRecordRegisterClients() Integer underflow
> 
>      CVE-2020-14362 ZDI-CAN-11574

These advisories have also now been published on the X.Org security page at
https://www.x.org/wiki/Development/Security/

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org

