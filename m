Received: (qmail 20014 invoked by uid 550); 26 May 2022 16:44:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19946 invoked from network); 26 May 2022 16:44:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1653583478;
	bh=b88z4waPOuYc4qMHb+4wIdxEGDzdIo20JRlPFJj2THw=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=iiXyNwW6uFJiQ4T7uJrzBp3EN/on+PhRLX5dgea/ohQyTvvQDodlkVNcWj3I6e1Zq
	 /NBJi2PBoe4FSOTp+tNNjQaIGgTMc9pZomMnGTtRtyXlgiZ+UWtq2VkMmwjuDzkBMh
	 iDHr8Z3NQ9M+WHBloMl0tKzn4moXnHnrAp78/ZsE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
MIME-Version: 1.0
Message-ID: <trinity-3f5f7066-5ba5-45cb-b229-a2207e9fe209-1653583477988@3c-app-gmx-bap49>
From: Norbert Slusarek <nslusarek@gmx.net>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, peterz@infradead.org
Content-Type: text/plain; charset=UTF-8
Date: Thu, 26 May 2022 18:44:38 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220524232155.GA2264@openwall.com>
References: <trinity-5f3c0fdf-d83f-422e-9a05-c4ead66e42e1-1653077676864@3c-app-gmx-bap52>
 <20220521154759.GA15268@openwall.com>
 <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
 <20220524232155.GA2264@openwall.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:nY1yOR8819XfFjhL8Tvgey7sMwsmhBSLm/ZstyhtxbqnfF5A0P63Urmi2+O9nzxtOMqef
 iR8Yhlg/qUY2xveigkF6wX7rd8Cx/XgmHmRmP4FRp/aEE/Yms84ewpCLPFB5EhKOw2YrpKUrrJLo
 zlDIMrdlqIaJuaUMscluU6VQa3OrRKP+eXcWoWNBz6ttZFh9sscFuHyPmbPonZlYkebuzDYCH0Ej
 40gJ6pct01gUCM//lnQDBBNCyiwOvc+EJj9BTIddQnJrwArSGaGz9mIB7xpW2qB1PGZW2XKCnylb
 v8=
X-UI-Out-Filterresults: notjunk:1;V03:K0:B3kLz0mP/rA=:NplcDwKWgHfVa3Jy7meJbe
 KMIQF4/iA+j8ULYWLyF4qPvBU1uKYjfxERKPvSMe3rAlpK9r0zFDS59Tw6yOi/GENXMbbKgwM
 vFu6ru6KwBNrzb5wCODt8+O1ljJK8G04hogIiuTk/DZVDAPiphF2LsPV02rwbIlfsTH7YZiaF
 5KFCl9ntiDLndggi+TgHx3ApbEuG24hCB9igk2yqP55x1G8yKNRi49dfXbBfeFnNg0MQVhdKD
 qN0CEbTrmVPofOHX95Xtiq276MiKC+R6Ui98AnRLNcZZLrM52jvDreKgcYp4QXJVP86JxYlrc
 mLuwenhZIuvBCKsqxURboXXc00UM6rbNzv/Jt4kzxMdM+vERLVJlfQPI9x77LjUDjEmivYnPs
 E0prYisIrZj6wYMdCGgs3n5cktn2v9DMwRLL30G4/GxP+9jkzH1W9znyc454b2FxQMYtf59Ff
 o7YAHOMcttARND8KBnrQPiAUOdhew1ccMVYfOyfN0vY7QFNSs0sI8ZsbpElQ/wEhT4HqXGChj
 /+JHSnO3icp082UJI28IjhQ9Hkn5hO68dWBDfb8oMveuMTTTv3r0/iDK9KBB+QjXZISSkh239
 YvT8ZBEjIBSjUtM6K/PNXeHnHi2ZipCsnaTvCgN/GNAY79VIU2FlYV+uUkrITCilWz8J40Me1
 OQeAcM63uezCidhgOMHc59VT+h3/QESkgB9AVFRl+YfBheHjHzgbeYZprZix0mYZj2yR1Jshq
 lG0xlaiExaBiON2KQfC3vb0nHGxyPbKjwZE8sg57uAUzBDt1+zoIFMVXKXYR1nmSSAHMQ5Gz0
 4Mnmjd1
Subject: Re: [oss-security] CVE-2022-1729: race condition in Linux perf
 subsystem leads to local privilege escalation

>What do you suggest we do regarding the LPE exploit you sent to
>linux-distros?

I saw your reveal of linux-distros from 2020 and the exchange
didn't include any text nor attachments. In that case, the
exploit should remain private to linux-distros accordingly.

>What do you suggest we do with this policy aspect going forward, so that
>people do not get into a situation where they're required to do
>something they didn't want to subscribe to?

How is this policy aspect enforced in the first place?
If it's not, I suggest you remove it entirely as there is no reason
to have policies which cannot (and shouldn't) be enforced.
Overall, as a researcher I would prefer having a way just to inform
distros of a bug, *without* being subject to these requirements.

Norbert
