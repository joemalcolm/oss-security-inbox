Received: (qmail 13987 invoked by uid 550); 17 Dec 2023 11:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13959 invoked from network); 17 Dec 2023 11:21:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702812121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zF5eVfh6MVmdnfSUkPBJkjjjxJuaYjkrkp9htTlJsV0=;
	b=UPuWJozUtn05ZNC+1483PEu1nFjWJwFdliDo2O8xr7FUOUlIThaSZc7yQYy5pBnJhUbDy+
	sjShhbjhy+tNPRPGbln7Z7wT5Kqtd2ciHydwaO/x5QP2z4ZFz9gi7TPLyTlArPj4l4B8o1
	T8BX/i+TSMLqJc4yLjaDx/D3Qy/Y1Ws=
X-MC-Unique: N-VwixNMN6-HzWhgdqObRg-1
From: Florian Weimer <fweimer@redhat.com>
To: Matthias Gerstner <mgerstner@suse.de>
Cc: oss-security@lists.openwall.com
References: <ZXr2P6zT-PLtWShn@kasco.suse.de>
Date: Sun, 17 Dec 2023 12:21:53 +0100
In-Reply-To: <ZXr2P6zT-PLtWShn@kasco.suse.de> (Matthias Gerstner's message of
	"Thu, 14 Dec 2023 13:34:05 +0100")
Message-ID: <87msu95b1q.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.3 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] budgie-extras: multiple predictable /tmp path
 issues in various applications

* Matthias Gerstner:

> As a quick fix for all of these issues I suggested to use
> `$XDG_RUNTIME_DIR` instead of /tmp. This directory is private to the
> logged in user and cannot be manipulated by other users in the system.

Note that on some systems, the XDG_RUNTIME_DIR directory is unavailable
after user UID switching (e.g., with sudo) because these systems follow
the specification to the letter and provide a XDG_RUNTIME_DIR setting
for the logged-in user instead of the current user.  So while it looks
like a good solution for most cases, it breaks a couple of use cases (or
still needs fallback even on systems that nominally have XDG_RUNTIME_DIR
support).

Thanks,
Florian

