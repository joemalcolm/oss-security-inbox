Received: (qmail 1827 invoked by uid 550); 25 May 2022 14:07:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1809 invoked from network); 25 May 2022 14:07:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1653487655;
	bh=zjxICfUlMgqXSgWWK6rTAOLFCvF/AUVJgquepzGNnO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=TvvT3KJl252joj9vdcPNO3mdztBTP5WgDPvUq/u1zOEbyq9H9e8OIyyTfbzQdau73
	 04ddxxJASkk6ar8gPC9djeJecabO4iKwnnsN4I552ytDz6EVL0KMaOK6K8Tt99c0YV
	 d/ZtjZDTazfjLFcVTCh66s+I9eEZ+csHWQb16KhGWwXPvHrl1xJ8OCykRLt9po+X00
	 OMPEV+SkQO1VSIVWG2LPJ+jiXzIHyQlwhAY+f23p/K+rvpdRPTBdfmeBxWdhWnNpEY
	 Km0pE9d0AkePjdv9J1Wz90x+dzQPQm6JGrudeX727scrylLsjLXa0SLW2c3m9u77Bu
	 3G5f4TQHyZTkg==
Message-ID: <24add3d4-c09d-76d7-0dee-6e0c089ff0e6@canonical.com>
Date: Wed, 25 May 2022 10:07:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-CA
To: oss-security@lists.openwall.com, Kamil Dudka <kdudka@redhat.com>
Cc: Guilherme de Almeida Suckevicz <gsuckevi@redhat.com>
References: <e410d6e9-53cb-e83e-0dbc-412467ba21db@redhat.com>
 <2183384.iZASKD2KPV@nbkamil>
 <c41c3628-6132-9893-55ce-d86ff251e4fd@canonical.com>
 <5618910.DvuYhMxLoT@nbkamil>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
In-Reply-To: <5618910.DvuYhMxLoT@nbkamil>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE-2022-1348 logrotate: potential DoS from
 unprivileged users via the state file

On 2022-05-25 09:37, Kamil Dudka wrote:
> On Wednesday, May 25, 2022 3:19:31 PM CEST Marc Deslauriers wrote:
>> On 2022-05-18 09:54, Kamil Dudka wrote:
>>> The current version of the patch to fix CVE-2022-1348 in logrotate is
>>> attached.  We are going to apply the patch upstream on May 25th, when
>>> the embargo is lifted.
>>
>> FWIW, I don't think the patch actually works when logrotate is built with
>> ACL support...
>>
>> Marc.
> 
> You are right.  Although the patch mitigates the security issue, it is not 
> perfect.  I had already opened an upstream pull request to improve it:
> 
>     https://github.com/logrotate/logrotate/pull/446
> 
> I might create a bug fix release soon with the patch included.
> 
> Sorry for the troubles!
> 
> Kamil
> 
> 

Oh! I had not seen that pull request. Thanks, that should solve the issue!

Marc.
