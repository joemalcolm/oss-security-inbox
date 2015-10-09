X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3503" "Friday" "9" "October" "2015" "05:08:22" "-0700" "Nick Kralevich" "nnk@google.com" "<CAFJ0LnG64u87qvJo4DWe-1kUNn4BNoMSoym-CXXiXN+FyfpDPA@mail.gmail.com>" "204" "Re: [oss-security] CVE request - Android OS - Using the PPP character device driver caused the system to restart" nil nil nil "10" "2015100912:08:22" "[oss-security] CVE request - Android OS - Using the PPP character device driver caused the system to restart" (number mark "U       nnk@google.c Oct  9  204/3503  " thread-indent "\"Re: [oss-security] CVE request - Android OS - Using the PPP character device driver caused the system to restart\"\n") "<2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>" ("<2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3965 invoked by uid 550); 9 Oct 2015 12:08:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3943 invoked from network); 9 Oct 2015 12:08:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=YouXtJNdT5b6kDzrgeRSFH/yvoMw+JYroAEf5j/0BHc=;
        b=kZLcoAZkjtDKu9NEnDh/4LL4nCZF2BqOv7I9L5nP+7RPyqg8c9oJCEdsQyP2IoqGB5
         GAMc1SqrpPP9gYDYwm91U7CX5GYIyHwHjExHOHJmEX7n/2kRfpoE5LEIPdz9RMcnheuV
         UcMVUICDGZDrGcJ46ayD1fCLhET5cHsProhM3S1kNm9NRh6muG7X+Jas7pafeUdi/pQW
         TzrvOmxPC+IwbOzqN8WiZ5HgqMpAv0fSQ2MbWqS9MZchtztn1QWgrEUWopSTaHEE5zmB
         P7DY8DvGM3H00UovCp15D+2AigP80iiE5xCOvC3fRkfLsKueV0cnTNuM4TT9o9d/qktr
         PgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=YouXtJNdT5b6kDzrgeRSFH/yvoMw+JYroAEf5j/0BHc=;
        b=nGPpbYQnMLjE49Ymrwvkci0Ok/glhhUH+uPg/mS+gV6PJqvj5BuHxHDMk85Wg8iZRb
         4xXxpK54m9ljQSPk9qdEF1zz8XduOPdtyQM1rIDQKyTSEw5ik+kZh7y8pxodg3VxZaho
         5rIqsFJ1vFBoL+5K6eVQQGODJ4R1pW4KLA7bfQzYf/D+vTAm3KwSXa6lA5N1PydE5Pa6
         aWiFpsFsYT4FOjUxo0Z5Hx1mcWPUthJzm0F7SV725sDVzS8t5q80BZCwncUwsAmLQ1Dl
         YprzqJ2DbGwGoaIo6JkgvufcDRjnoZw9kXfEciJwAsk6D0e2fephUUdFmEfp+TavNntp
         TNTA==
X-Gm-Message-State: ALoCoQkKs2ZhWB9sIkW4SxA8/J8McOK0kzAwT5lv1q+wI/M0jsUH18b1BNfGS/YMPndeX3xrxHbN
MIME-Version: 1.0
X-Received: by 10.31.34.7 with SMTP id i7mr7495424vki.60.1444392502699; Fri,
 09 Oct 2015 05:08:22 -0700 (PDT)
In-Reply-To: <2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>
References: <2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>
Message-ID: <CAFJ0LnG64u87qvJo4DWe-1kUNn4BNoMSoym-CXXiXN+FyfpDPA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113dc8b80a78f20521aad642
Date: Fri, 9 Oct 2015 05:08:22 -0700
From: Nick Kralevich <nnk@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Android OS - Using the PPP character
 device driver caused the system to restart
To: oss-security@lists.openwall.com

--001a113dc8b80a78f20521aad642
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

As explained in https://code.google.com/p/android/issues/detail?id=3D187973=
 ,
this is not an Android specific bug, nor is it reachable from untrusted
code within Android.

-- Nick

On Thu, Oct 8, 2015 at 10:43 PM, =E9=83=AD=E6=B0=B8=E5=88=9A <guoyonggang@3=
60.cn> wrote:

> Detailed steps(The code below using C language):
>
> Step1:     Open PPP drive device.
>
>       int fd =3D open("/dev/ppp",O_RDWR);
>
>
>
> Step2:     Create a new ppp unit.
>
>       unsigned int cmd =3D PPPIOCNEWUNIT;
>
>       long arg =3D -1;/* Set arg < 0 */
>
>       ret =3D ioctl(fd,cmd, &arg);
>
>
>
> Step3:  Set VJ max slot ID.
>
>       cmd=3D PPPIOCSMAXCID;
>
>       arg =3D 0x67084000;
>
>       ret =3D ioctl(fd,cmd, &arg);
>
>
>
> Result:
>
>       System restart.
>
>
>
>
>
> I think the correct behavior should be :
>
>       return -EINVAL;
>
>       Tell user not a typewriter.
>
>
>
> Analysis of causes:
>
> In the process of using the PPP device driver, if the unit of the PPP
> device file has been created. On the basis of the above, the ioctl functi=
on
> is used to pass the PPPIOCSMAXCID command and the 0x67084000  parameter
> (parameters must be satisfied: arg>>16 > 255 and 0xFFFF&arg > 255), which
> will lead to the use of null pointers in the kernel.
>
> The null pointer is used specifically in the slhc_init function, and the
> function is defined as follows:
>
>
> ////////////////////////////slhc_init////////////////////////////////////=
///
>
> struct slcompress *
>
> slhc_init(int rslots, int tslots)
>
> {
>
>       ......
>
>       struct slcompress *comp;
>
>       ......
>
>
>
>       if ( rslots > 0  &&  rslots < 256 ) {
>
>            ......
>
>            comp->rstate =3D kzalloc(rsize, GFP_KERNEL);
>
>            ......
>
>       }
>
>
>
>       if ( tslots > 0  &&  tslots < 256 ) {
>
>            ......
>
>            comp->tstate =3D kzalloc(tsize, GFP_KERNEL);
>
>            ......
>
>       }
>
>
>
>       ......
>
>
>
>       if ( tslots > 0 ) {
>
>            ts =3D comp->tstate;
>
>            for(i =3D comp->tslot_limit; i > 0; --i){
>
>                  ts[i].cs_this =3D i;
>
>                  ts[i].next =3D &(ts[i - 1]);
>
>            }
>
>            ts[0].next =3D &(ts[comp->tslot_limit]);
>
>            ts[0].cs_this =3D 0;
>
>       }
>
>       ......
>
> }
>
>
>
> If you pass the appropriate parameters, make sure tslots and rslots two
> parameters are greater than 255. This lead comp->rstate equal NULL.In cas=
es
> no check the comp->rstate is NULL, using it in kernel casue the system
> crash and restart.
>
>
>
>
>
>
>
> Solution:
>
>       Add a judge in front of "ts =3D comp->tstate;".
>
>
>
>       As follows:
>
>       if ( tslots > 0 ) {
>
>            if(comp->tstate !=3D NULL){
>
>                  ts =3D comp->tstate;
>
>                  for(i =3D comp->tslot_limit; i > 0; --i){
>
>                       ts[i].cs_this =3D i;
>
>                       ts[i].next =3D &(ts[i - 1]);
>
>                  }
>
>                  ts[0].next =3D &(ts[comp->tslot_limit]);
>
>                  ts[0].cs_this =3D 0;
>
>            }else{
>
>                  return NULL;
>
>            }
>
>       }
>
>
>
>
>
>
>
> The specific exploit code and steps caused the system to restart see atta=
chment.
>
>
>



--=20
Nick Kralevich | Android Security | nnk@google.com | 650.214.4037

--001a113dc8b80a78f20521aad642--
