Received: (qmail 24393 invoked by uid 550); 30 Dec 2025 19:09:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28613 invoked from network); 30 Dec 2025 06:34:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767076437; x=1767681237; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDH3lvEE1JvC1UlJKXYSz174KKJyAS4DXAlgJ/Kffxo=;
        b=eJqJVoebpzryV/PErx4CquIBmoQ94S5sZ0QP/DH4FrxzfZWGAOn/omnOvvvDnfh7Eg
         aV2EKhzj/HcgmkV6rs6HjyPk74CM4oUs2ghi4GTky3RxUq/VErhlpwdhpX+lqF79j+Le
         C5eyRAa9o8EBO2TR5/x3lej0bqHbSMtJm4DToHqzJZy4CJ9JuAe7LkBzfJsX+fQcZDDe
         0tij1XXCMp0hmJHH1HAfPfK2hLgv0amW+Md+YQO2+bGnWv4XNw5l5pWXppo5rbOEGxcE
         +cHBhF6TS1s4cL89W5olwD9ybl4hagA7RUEVKUHiSYFQpAyp0F+6a5NV4W/zzhAWp4c6
         uIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767076437; x=1767681237;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BDH3lvEE1JvC1UlJKXYSz174KKJyAS4DXAlgJ/Kffxo=;
        b=vXGBrT0P4ReMQF63K6dryL0I4WvHcvYpYqTcUVe/WBW+qf8eKxBx9db0la3amsVHLO
         tCMrd1G0owgXXWZyHDy0s84KtQLvdSwqxgZvVBM06xg8eNfq0CyKR/h2rRnT3dIifS+8
         RayAwKkbuw6B5OBOIigd4fv2r/2NF9/7nKxm5h4H+dzBt7gtgPfI/XO6aeW/niSCqw/7
         gLRocy2Nz0GWVf09xMXglyg9ScD4/bAyIu+MPwxQ91ztSQTU89GlRGJO2E/NugxLCkP7
         I1nQAO6YjxFWDyQH5Pp5qMjvrRwIqv5ztDoeKHZmDtJBXY0hwV93jK6m0R8B47Y+tRpc
         WPXg==
X-Gm-Message-State: AOJu0YzTLl4xBOk0SWMwpytNd9moD3ki3IG7yY62FcNJ6YtgBW5beY14
	QpikzPP/RZ5LxvkyK0mx0axJbFR5zW+jcXJV2awkkunxvSpFSiTwhsJmjrX2q4El
X-Gm-Gg: AY/fxX4Na/8yxrhn6QVURWRw8ZnS0CwyWh3EdAR3UwLvnAp5ac66Wf/mk1H+tcyNkKw
	GHIaDFowMkYx75lpN2/Kg2AmAwX+XjgtZqzmr6dSPbU5sawQkv6I7EMhx/hhbcecvuL0sLv8aRc
	gs8o8u9m4Fp4OZWNli83Z7IvIQpElvIy6AklIvJnG4lR1kNyUydBZTjFi1vIFMZ/z/4gJO8zzYl
	2kOTe66EG3eOI4sAg7w2G1MrXXGx01O7crhkBSHvOyeVEVKIiZGzz+pKIF7SPNPA6nzQC7BUMCp
	S+cEhsMOP57eZyinBvEMfYJ49wNRsY4NxqhwOj2VJO9kHcEn6MmLu/GZdwHSPDM4sUWR9+RBFPn
	JTz1M4sIUD/YS/m+qbmaQPaY05UDat3kdNWyzRB9eNstIhl9pcLzQXDOdM2NEwmE6NNidE3o7Hg
	mSLtHPMMA=
X-Google-Smtp-Source: AGHT+IFojfLV6EN6K7poV+swg4ZmlVuxpZI5oj2SirCOQfeiNXopvPoRHAWVbKogYQzbujt+p6AXXQ==
X-Received: by 2002:a05:6830:6d05:b0:7c7:6a17:ba35 with SMTP id 46e09a7af769-7cc66a49319mr21136673a34.31.1767076436778;
        Mon, 29 Dec 2025 22:33:56 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------E8xQYPETmZ0OpI0KYHzQnAKU"
Message-ID: <937f78c2-45fc-4062-8941-f6f419004318@gmail.com>
Date: Tue, 30 Dec 2025 00:33:47 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Greg Dahlman <dahlman@gmail.com>
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
 <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com>
 <SN7PR14MB73782CD825FF151648AB323596BFA@SN7PR14MB7378.namprd14.prod.outlook.com>
 <CAM=PXV705V7Su6kwyKAipXtAqi+DU644Qxv_4LsqC=FVG5bg0Q@mail.gmail.com>
 <CADz+4x-t+9rW+OSef9A1rf4wV6zwxZQLnSk_NsxYm4ONv3HH8w@mail.gmail.com>
 <CAM=PXV4yADSZ2udrWhiWNocroCj4ceefd2V5ANOUYYcTF_+SHA@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAM=PXV4yADSZ2udrWhiWNocroCj4ceefd2V5ANOUYYcTF_+SHA@mail.gmail.com>
Subject: Re: [oss-security] Systemd vsock sshd

--------------E8xQYPETmZ0OpI0KYHzQnAKU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/29/25 13:53, Greg Dahlman wrote:
> I did reach out to the systemd team, while I was working with the kernel
> security team and I encouraged others to do so if they think it will be
> productive.
>
> There are sensitivities and frustrations that span all groups that make
> that conversation difficult, but I think someone with an established trust
> with the project could make forward progress.

I certainly agree that the systemd team's apparent "cavalier" attitude 
towards security (and sound architecture) makes lots of frustrations.  
(For example, the "katamari" architecture that made the xz-utils sshd 
backdoor possible is definitely a bad practice, although a distressingly 
common one not unique to systemd.)

To *really* set things off here, this vsock listener that crosses what 
is otherwise a security boundary *looks* like an attempt at a backdoor, 
although I believe it to be ignorance/negligence rather than malice.

> That said, disabling this bridge will impact systemd's attempt to
> enable zero config for VMs. The container ecosystem as a whole hasn't
> exactly demonstrated that they will reciprocate. In a perfect world the
> container runtimes would protect their use case from the remainder of the
> shared kernel by default, unfortunately that is not what we have today.

Does the systemd team understand that breaking container isolation may 
be completely unacceptable, to the point of "if you want secure 
containers, you must not use systemd" if they persist in setting up new 
unexpected listeners like this?

Maybe "zero config for VMs" is simply outside of the proper scope of a 
system service manager?  It could perhaps be an optional module.


-- Jacob

--------------E8xQYPETmZ0OpI0KYHzQnAKU--
