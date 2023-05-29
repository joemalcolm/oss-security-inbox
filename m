Received: (qmail 25615 invoked by uid 550); 29 May 2023 13:30:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12227 invoked from network); 29 May 2023 08:11:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:Content-Transfer-Encoding
	:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=tPpWWEImWldOrpErkjhGEPJEVSrr2BNlnZU0q5kX1rc=; b=RCTBaxmfvIjFL0uKyzMphqFqYl
	lNU6bTao8pKZGWDwLQdQXOS5lDv8DiatShugnoZDlwt8fO8z8XkDjCj+9ibU8FIRvejJmh6MJOt3c
	qKEjGHvV+nufgv9Q4EU/ttS89t7xYfxfaVfzMX2Uyd35wMM+EFXBxMiYF8fxzIkLkIASWGKbxT/D2
	xvUcQuu1VnC5G4MEjJMlbe5KvbKQWrK0QWLG8Wj+spCEcLybUFb5kmylKB9yvYB4omq8GCu4djsSZ
	nL8S/LsM3UIG6l+y8rL7khMZN1YTfQdC/Br5fKf+Y8AZ6MzEXpedwX4fRWgB+/ndV6DXwe537Eklm
	kjrc3Cug==;
From: Bastien =?ISO-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
To: oss-security <oss-security@lists.openwall.com>
Date: Mon, 29 May 2023 08:11:18 +0000
Message-ID: <2308609.bdg04gU6LQ@portable-bastien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"
X-Debian-User: rouca
Subject: [oss-security] Stack overflow in imagemagick coders/tiff.c

Hi,

Reading changelog and code of imagemagick, I want to report a stack overflow with crafted tiff file in imagemagick

Fixed (after 6.9.12-26) by:
https://github.com/ImageMagick/ImageMagick6/commit/85a370c79afeb45a97842b0959366af5236e9023

Original reporter was Muhammad Aldo Firmansyah

Thanks 

Bastien (rouca)
