Received: (qmail 17413 invoked by uid 550); 8 Aug 2024 12:53:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32624 invoked from network); 7 Aug 2024 22:58:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=grisby.org;
	s=20180401; h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=PY72Ph6vOJbSm0HP0kACMeNBt/9rY8ECyUGFETAWAj4=; b=Dd5CuZmHL+643kvoxnHNxySjaL
	Yxkq2gvudhKGVGM4u8I8+i24qB8hZD7pM/uv0YShip0MepVxkdhj0SFeRZrEX7zBqB+6MdDY0uOa+
	5Y3LkY3ndQEilqI8MaHbJd8FJYocGgFLGKDrQqOh7wGTKJqnJiISTpuYG51rqFBLj0c66hqx3fnX7
	9oF7yiYj1UfgxJJ+SZSt/zQLsnFbnLdcFSNtoX7YmX4vcTe0BJbeR54VG0a+VoW3g1jELVqs30LgC
	4v+bMJWkrkjm0XXrcVsGxhMjhmH6vScz0la1zfI2WV7OvmvZ4TeU6I1vvSI0FvzHc+luhMzXdDETr
	x+8GCJeQ==;
Message-ID: <ff992a659e09160cb6609c611245fb480a5004ab.camel@grisby.org>
From: Duncan Grisby <duncan@grisby.org>
To: oss-security@lists.openwall.com
Date: Wed, 07 Aug 2024 23:58:40 +0100
In-Reply-To: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
References: 
	<CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On Tue, 2024-08-06 at 05:02 -0400, Neil Horman wrote:


> The current proposal under consideration is to explicitly disable TLS
> 1.0/1.1 at build time, in our 4.0 release (tentatively scheduled to
> release in the next 12-18 months), with an eye to completely remove
> the impacted code in a future major release.=C2=A0 The default
> configuration could be overridden to re-enable TLS 1.0/1.1 at build
> time.
>=20
> Questions to the community are:
>=20
> 1) Are distributions/users comfortable with this approach in the time
> frame proposed?

I lead a quite unusual application (BMC Discovery), which is an IT
discovery tool. Its purpose is to connect to everything it can in an IT
environment and interrogate it, to find out what it is, and what it is
doing.

We would all agree that everything ought to be using modern TLS
versions and encryption algorithms, but the reality is that we
encounter many ancient systems that are using old protocols. It is
important to us that we can connect to things even if they are now
considered insecure, not least because that way we can report that they
_are_ old and insecure.

Obviously this is quite an unusual use of OpenSSL, but I think it is a
good use case for retaining these old algorithms for as long as
possible, even if they are disabled by default. If new OpenSSL versions
drop support for older protocols, we will have to start using multiple
versions, so we can use old OpenSSL versions for old discovery targets.

Regards,

Duncan Grisby.

--=20
Duncan Grisby <duncan@grisby.org>
