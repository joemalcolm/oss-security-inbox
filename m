X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2499" "Wednesday" "20" "January" "2016" "12:05:02" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNVfowfZmQxBUjhGvC8b7quqnXLWQZL=2xBO7uD-MGvewg@mail.gmail.com>" "76" "[oss-security] CVE request: Two vulnerabilities in mapbox.js node module" nil nil nil "1" "2016012020:05:02" "[oss-security] CVE request: Two vulnerabilities in mapbox.js node module" (number mark "U       reed@reedlod Jan 20   76/2499  " thread-indent "\"[oss-security] CVE request: Two vulnerabilities in mapbox.js node module\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22137 invoked by uid 550); 20 Jan 2016 20:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22117 invoked from network); 20 Jan 2016 20:05:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc:content-type;
        bh=g/ZB8BUwBmyyhbpmUhGtuHXI5xvB86i0sOVt+uIRc1k=;
        b=L42xiti9XwWKUO/hOXXfWbpnktC/sB60qTuZwZAw2DZJWAf/wMym5ksUDZDoEEjcl3
         6srLC4Grxv6rJMM7QPmyWmR/zd7UpoM6d5++fZKzcGYwLvB9Py6p88bfjJr/EmBSnZPl
         8bdZ8aFwlGBx0ObuiwUgcwHDbGjzWWpDrASiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-type;
        bh=g/ZB8BUwBmyyhbpmUhGtuHXI5xvB86i0sOVt+uIRc1k=;
        b=mluzN3T5bq5nEaB0MEYVVzyz2IhvfPxhN1BSwPbuXXJsw2MPMqs/4TVt+wK72ekWAP
         A3VWftxFHDeDhLzQm36VP6WdQMu1R99yIfRckb2jYSjtN3YZ7J4QLfckdoHSOguJKSb0
         nhYAalmcfHTwCqHosgjR3PYwt1ITub69tEYdVVNmISGQqKk3XRb+JHEJocW4166mGE49
         Ew2QbS6apvElep6q6TTNtvVQZBz7g682ruEgcbMzCHj2nyykw3aVtRk/oyYGBYqrs2+8
         yqRtEclcOwRaZkIOrYSE+UokIkVC+y2TydFXk/UfwC42+mMjX0PPWHOshYiO4fyUDPoD
         +kzQ==
X-Gm-Message-State: ALoCoQmD4JI1b04sw7tiJg+0tu/eOeOfQqXlcA9DEpzX7LLdvaTtP3pHtExoTF+J0GA4vM00l+UHgF0I5oREhs0tLy/MmKsOsKj9i4Asj4x854gKPIbm3L8=
X-Received: by 10.140.20.145 with SMTP id 17mr48457740qgj.45.1453320321909;
 Wed, 20 Jan 2016 12:05:21 -0800 (PST)
MIME-Version: 1.0
From: Reed Loden <reed@reedloden.com>
Date: Wed, 20 Jan 2016 12:05:02 -0800
Message-ID: <CALPTtNVfowfZmQxBUjhGvC8b7quqnXLWQZL=2xBO7uD-MGvewg@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Cc: report@nodesecurity.io
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: Two vulnerabilities in mapbox.js node module

Noticed these via the Node Security Project.

mapbox.js is "Mapbox JavaScript API, a Leaflet Plugin".
http://mapbox.com/mapbox.js/

Homepage: https://github.com/mapbox/mapbox.js

Download: https://www.npmjs.com/package/mapbox.js

* Content Injection via TileJSON attribute

  https://nodesecurity.io/advisories/49

  Overview:

  Mapbox.js versions 1.x prior to 1.6.5 and 2.x prior to 2.1.7 are vulnerable
  to a cross-site-scripting attack in certain uncommon usage scenarios.

  If you use L.mapbox.map or L.mapbox.tileLayer to load untrusted TileJSON
  content from a non-Mapbox URL, it is possible for a malicious user with
  control over the TileJSON content to inject script content into the
  "attribution" value of the TileJSON which will be executed in the context of
  the page using Mapbox.js.

  Such usage is uncommon. The following usage scenarios are not vulnerable:

  * only trusted TileJSON content is loaded
  * TileJSON content comes only from mapbox.com URLs
  * a Mapbox map ID is supplied, rather than a TileJSON URL

  Remediation:

  Upgrade to Mapbox.js version 2.1.7. If you are still using a 1.x version and
  unable to upgrade to 2.1.7, upgrade to 1.6.5.

  Credit: John Firebaugh


* Content Injection via TileJSON Name

  https://nodesecurity.io/advisories/74

  Overview:

  Mapbox.js versions 1.x prior to 1.6.6 and 2.x prior to 2.2.4 are vulnerable
  to a cross-site-scripting attack in certain uncommon usage scenarios.

  If you use L.mapbox.map and L.mapbox.shareControl it is possible for a
  malicious user with control over the TileJSON content to inject script
  content into the name value of the TileJSON. After clicking on the share
  control, the malicious code will execute in the context of the page using
  Mapbox.js.

  Such usage is uncommon. L.mapbox.shareControl is not automatically added to
  mapbox.js maps and must be explicitly added. The following usage scenarios
  are not vulnerable:

  * the map does not use a share control (L.mapbox.sharecontrol)
  * only trusted TileJSON content is loaded

  Remediation:

  Upgrade to Mapbox.js version 2.2.4. If you are still using a 1.x version and
  unable to upgrade to 2.2.4, upgrade to 1.6.6.

  If you are unable to upgrade to either 2.2.4 or 1.6.6, you can also remove
  instances of L.mapbox.shareControl from your maps.

  Credit: Alexandra Ulsh


The advisories state that a CVE has been requested, but I haven't seen any
assignments yet. Please assign CVEs as appropriate.

Thanks,
~reed
