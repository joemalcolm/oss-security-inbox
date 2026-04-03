Received: (qmail 26421 invoked by uid 550); 3 Apr 2026 09:44:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26385 invoked from network); 3 Apr 2026 09:44:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775209432; x=1775814232; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HRQDauyzITF3IE6vXcwWpUldrNE7LFMCJb+DiBPhXFY=;
        b=aiOkTnFmRWAHjf6qguQdbEsPZiaaF92pQIbScdCWWoGwFped6DFGYRCE5EU2exi/K8
         08S7HX8tAYZzR4RmduR84urAImtKZ3Xk8UEzcXYnH5u6MUpOmu4ORFPb3kpKxiB8xH+Z
         6NED/kChgrcz/+JRllSYFVxT+xPl4sa18dlHXfcfrI7YIuqDTZulgNQcNAH0X/0cvGRT
         AUKbqMkOTuDUZ1/NQj6mTdPy1WHzPYLBeoqE67lmYBfbc8ZNhQjjueYVXrcCCqomqn8o
         ysGhKxscY0vA/drGB8EC9ge38fG5vTy4Xo2oX8BZqw2VLhWdu1yHxgyRjqfyXuWxIixF
         FTsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775209432; x=1775814232;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HRQDauyzITF3IE6vXcwWpUldrNE7LFMCJb+DiBPhXFY=;
        b=naXfu2Itr9zUE5b2oRZncQ/YXC5x/AXvv07E+Xo21IngjH5RkHv/9lc1EaocHPbrP0
         t3q2n9jwW941x6YTmS3ueHnCkIioxQBKvVCibBWRz0uQcsOG2M3sowFqetwQ2NK4D9LB
         pDxyIeFZukLt8E+5vgW96Fqi4njz7iaD0xP1tKf0fj/ZfxMKAZjgsZHsvVHsYWlrzU9S
         vcssyrHJfCD4DdBMX8svinbLjmGV+jpmBKy7w+Na2iCINyrspYcY+JwmJ1eP1o/2Ngj5
         CZzeLwMhtxw7EanQSElixNe/FIj0tLfjtQD7VcIO/v3JudmUGAIfj/ReTy+qV3LAD6KY
         OCNw==
X-Gm-Message-State: AOJu0Yy3kDi+62P9lv+buN7Lkn9GVgH3q0Pr3F4aA/IvydjpGJUz9pow
	9kjtOtMACRrhKmXPTxTLYgz88cZuCP1UVZBdjatIuHbUz8l8Ku7Hh0bWT+CRqRFS
X-Gm-Gg: AeBDieuW7rJnx9/L7Z4mnQ/GMnoOwwxER3VEqo+PwaNnQj5j9eSjabzVADdQvWFkjLH
	0GixQ/+UaRyhUGZMZmbzvEgunRRYnot0Z7NUrp+ef/1PllGwEnSaTuqw4DvbOOS/TuJQzMdi7m+
	Yd3F9tOPSnfNiAwAydvwzHz1HqvDIj5EHomQofeYhkbIXZxCo4bJvuqMOhufioMh8e1LT51dBQG
	tsqxNdsUhyNNQTh9IvwpsbCsFkkcWf3ofAUWVDzLJrJk8W7Hmr5foqja6DmtzZm5UW+cFmfvYK4
	3V44r02hvbUSpFpHolLkMSU/AZetU1Ma2xL+0+nHkkxue/KgqzZfw27RbnrrHwAWWUd1NedgPA0
	NxgtMfLDwk06974imOLsJn6+Bt71TS700JLyjGpQpfesZCEI8mhoE/7QF4CxkwFLM/WxaDT26mX
	aUnvcM5MeL+yH81H75R+jeREo0dCEa/L96vwSaOdetnE8qrQtGgeoaWloJk6g=
X-Received: by 2002:a05:6000:184d:b0:439:d755:a895 with SMTP id ffacd0b85a97d-43d292ec87amr3676592f8f.42.1775209432089;
        Fri, 03 Apr 2026 02:43:52 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 3 Apr 2026 11:43:50 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Tianyu Chen <sweetyfish@deepin.org>
Message-ID: <ac-L1smLR_kbFOcS@eldamar.lan>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <ac4aBrA6ssztvsrp@256bit.org>
 <78956342F5383230+ac4fJDMjKT0_L7em@ut005408-PC>
 <ac5RDjzlzUnuJd0H@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac5RDjzlzUnuJd0H@256bit.org>
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272

Hi,

On Thu, Apr 02, 2026 at 01:20:46PM +0200, Christian Brabandt wrote:
> 
> Tianyu Chen schrieb am Donnerstag, den 02. April 2026:
> 
> > On Thu, Apr 02, 2026 at 09:25:58AM +0200, Christian Brabandt wrote:
> > > 
> > > Sorry for being potentially off-topic, but I am wondering if I am doing 
> > > something wrong here. Did anybody request a CVE for this? I got a 
> > > notification from Github Support (after 10 hours or so) that they cannot 
> > > assign a CVE for this, as there was already one assigned.
> > > 
> > > I typically hit the *Request CVE* button before I publish an advisory 
> > > and send out the notifications, and usually github assigns those pretty 
> > > fast, but not this time.
> > > 
> > > Does anybody here know how this works? Or did I do something wrong?
> > 
> > Isn't it CVE-2026-34714? I saw it noted on
> > https://github.com/vim/vim/security/advisories/GHSA-2gmj-rpqf-pxvh.
> 
> Yes, but Github did not assign it. Someone else did and GH did barely 
> notify me of this already existing CVE.

According to https://www.cve.org/CVERecord?id=CVE-2026-34714 the
assigner is MITRE CNA itself.

Regards,
Salvatore
