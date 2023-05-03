CREATE TABLE redrock.t_programs (
    name character varying(255) NOT NULL,
    description character varying(4000),
    hasnotes numeric DEFAULT 0 NOT NULL,
    hasdocuments numeric DEFAULT 0 NOT NULL,
    olv numeric DEFAULT 0 NOT NULL,
    extrefid character varying(255),
    audittypes numeric DEFAULT 2 NOT NULL,
    hasmsgs numeric DEFAULT 0 NOT NULL,
    lastupdatedate numeric,
    entrydate numeric,
    customerguid character varying(32) NOT NULL,
    guid character varying(32) NOT NULL,
    portfolioguid character varying(32),
    enteredbyguid character varying(32),
    ownerguid character varying(32),
    lastupdatedbyguid character varying(32),
    categoryguid character varying(32),
    securityrootguid character varying(32),
    securityrootobjcode character varying(6),
    securityancestorsdisabled numeric DEFAULT 0 NOT NULL,
    deleted character(1),
    deletiondate timestamp(3) without time zone,
    recycletoken character varying(32),
    isactive numeric DEFAULT 1 NOT NULL,
    groupguid character varying(32)
);

CREATE TABLE redrock.t_projects (
    referencenum numeric,
    name character varying(255) NOT NULL,
    description character varying(4000),
    priority numeric DEFAULT 0 NOT NULL,
    updatetype character varying(4) DEFAULT 'AUTO'::character varying NOT NULL,
    hasnotes numeric DEFAULT 0 NOT NULL,
    hascalcerror numeric DEFAULT 0 NOT NULL,
    hasdocuments numeric DEFAULT 0 NOT NULL,
    plannedstartdate numeric,
    projectedstartdate numeric,
    eststartdate numeric,
    actualstartdate numeric,
    plannedcompletiondate numeric,
    projectedcompletiondate numeric,
    estcompletiondate numeric,
    actualcompletiondate numeric,
    percentcomplete numeric(10,2) DEFAULT 0 NOT NULL,
    entrydate numeric,
    status character varying(15) DEFAULT 'Current'::character varying NOT NULL,
    extrefid character varying(255),
    schedulemode character varying(2) DEFAULT 'S'::character varying NOT NULL,
    workrequired numeric DEFAULT 0 NOT NULL,
    lastcalcdate numeric DEFAULT 0 NOT NULL,
    version numeric DEFAULT 0 NOT NULL,
    durminutes numeric DEFAULT 0 NOT NULL,
    hasoptasks numeric DEFAULT 0 NOT NULL,
    numopenoptasks numeric DEFAULT 0 NOT NULL,
    hasresolvable numeric DEFAULT 0 NOT NULL,
    audittypes numeric DEFAULT 2 NOT NULL,
    actualwork numeric DEFAULT 0 NOT NULL,
    actualcost numeric(20,4) DEFAULT 0 NOT NULL,
    actualdurminutes numeric DEFAULT 0 NOT NULL,
    plannedcost numeric(20,4) DEFAULT 0 NOT NULL,
    pimethod character varying(2) DEFAULT 'H'::character varying NOT NULL,
    budget numeric(20,4) DEFAULT 0 NOT NULL,
    cpi numeric(20,4) DEFAULT 0 NOT NULL,
    spi numeric(20,4) DEFAULT 0 NOT NULL,
    eac numeric(20,4) DEFAULT 0 NOT NULL,
    csi numeric(20,4) DEFAULT 0 NOT NULL,
    progstat character varying(2) DEFAULT 'OT'::character varying NOT NULL,
    hasmsgs numeric DEFAULT 0 NOT NULL,
    fixedrevenue numeric(20,4) DEFAULT 0 NOT NULL,
    plannedrevenue numeric(20,4) DEFAULT 0 NOT NULL,
    actualrevenue numeric(20,4) DEFAULT 0 NOT NULL,
    billedrevenue numeric(20,4) DEFAULT 0 NOT NULL,
    autocompletetype character varying(3) DEFAULT 'MAN'::character varying NOT NULL,
    fixedcost numeric(20,4) DEFAULT 0 NOT NULL,
    cond character varying(2) DEFAULT 'ON'::character varying NOT NULL,
    condtype character varying(2) DEFAULT 'PG'::character varying NOT NULL,
    lastupdatedate numeric,
    displayorder numeric,
    isbudgeted numeric DEFAULT 0 NOT NULL,
    hasbudgetconflict numeric DEFAULT 0 NOT NULL,
    risk numeric,
    budgetedstartdate numeric,
    budgetedcompletiondate numeric,
    hastimednotifications numeric DEFAULT 0 NOT NULL,
    hasexpenses numeric DEFAULT 0 NOT NULL,
    filterhourtypes numeric DEFAULT 0,
    portfoliopriority numeric,
    levelingmode character varying(3),
    ownerprivileges numeric DEFAULT 0 NOT NULL,
    enableautobaselines numeric DEFAULT 0 NOT NULL,
    autobaselinerecurtype character varying(2) DEFAULT 'W'::character varying NOT NULL,
    autobaselinerecuron numeric DEFAULT 0 NOT NULL,
    nextautobaselinedate numeric,
    actuallaborcost numeric(20,4) DEFAULT 0 NOT NULL,
    actualexpensecost numeric(20,4) DEFAULT 0 NOT NULL,
    plannedlaborcost numeric(20,4) DEFAULT 0 NOT NULL,
    plannedexpensecost numeric(20,4) DEFAULT 0 NOT NULL,
    deliverablesuccessscore numeric(5,2),
    plannedriskcost numeric(20,4),
    actualriskcost numeric(20,4),
    plannedbenefit numeric(20,4),
    actualbenefit numeric(20,4),
    actualvalue numeric(20,4),
    plannedvalue numeric(20,4),
    rpi numeric(10,2) DEFAULT 0 NOT NULL,
    rrc numeric(20,4) DEFAULT 0 NOT NULL,
    alignment numeric(10,2),
    fixedstartdate numeric,
    fixedenddate numeric,
    bccompletionstate numeric DEFAULT 0 NOT NULL,
    remainingcost numeric(20,4),
    remainingrevenue numeric(20,4),
    optimizationscore numeric,
    selectedportoptimizer numeric DEFAULT 0,
    budgetedlaborcost numeric(20,4),
    budgetedcost numeric(20,4),
    budgetedhours numeric(18,2),
    previousstatus character varying(6),
    hasrateoverride numeric DEFAULT 0 NOT NULL,
    financelastupdatedate numeric,
    personal numeric DEFAULT 0 NOT NULL,
    statusupdate character varying(4000),
    customerguid character varying(32) NOT NULL,
    programguid character varying(32),
    portfolioguid character varying(32),
    companyguid character varying(32),
    enteredbyguid character varying(32),
    lastupdatedbyguid character varying(32),
    ownerguid character varying(32),
    submittedbyguid character varying(32),
    sponsorguid character varying(32),
    queueguid character varying(32),
    groupguid character varying(32) NOT NULL,
    rejectionissueguid character varying(32),
    scheduleguid character varying(32),
    guid character varying(32) NOT NULL,
    templateguid character varying(32),
    alignmentscorecardguid character varying(32),
    deliverablescorecardguid character varying(32),
    resourcepoolguid character varying(32),
    approvalprocessguid character varying(32),
    currentapprovalstepguid character varying(32),
    milestonepathguid character varying(32),
    lastnoteguid character varying(32),
    lastconditionnoteguid character varying(32),
    categoryguid character varying(32),
    popaccountguid character varying(32),
    url character varying(500),
    olv numeric DEFAULT 0 NOT NULL,
    summaryautocompletetype character varying(3) DEFAULT 'AUT'::character varying NOT NULL,
    currency character varying(3),
    convertedoptaskownerguid character varying(32),
    convertedoptaskname character varying(255),
    convertedoptaskentrydate numeric,
    totaltaskcount numeric DEFAULT 0 NOT NULL,
    totaloptaskcount numeric DEFAULT 0 NOT NULL,
    lucidmigrationdate numeric,
    defaultviewforbactions numeric DEFAULT 0 NOT NULL,
    defaultcontrforbactions numeric DEFAULT 0 NOT NULL,
    defaultmanageforbactions numeric DEFAULT 0 NOT NULL,
    teamguid character varying(32),
    securityancestorsdisabled numeric DEFAULT 0 NOT NULL,
    eaccalculationmethod character varying(2) DEFAULT 'P'::character varying NOT NULL,
    pendingcalculation numeric,
    pendingupdatemethods character varying(60),
    hastimelineexception numeric DEFAULT 0 NOT NULL,
    timelineexceptioninfo text,
    deleted character(1),
    deletiondate timestamp(3) without time zone,
    recycletoken character varying(32),
    originalworkrequired numeric DEFAULT 0 NOT NULL,
    isoriginalplnhoursset numeric(1,0) DEFAULT 0 NOT NULL,
    syncburndowndate numeric,
    approvalstartdate numeric,
    approvalcompletiondate numeric,
    convertedoptaskguid character varying(32),
    workflowautomationguid character varying(32),
    taskwfautomationguid character varying(32),
    issuewfautomationguid character varying(32),
    rsplannerbudgetedlaborcost numeric(20,4),
    companyratesoverride numeric(1,0) DEFAULT 0 NOT NULL,
    bcws numeric(20,4),
    bcwp numeric(20,4),
    usertimeoff character varying(4) DEFAULT 'CUTO'::character varying NOT NULL,
    actualworkdouble numeric(20,4) DEFAULT 0 NOT NULL,
    numberoflinkedgoals numeric DEFAULT 0 NOT NULL,
    budgetedlaborcostsource character varying(5),
    scplannerbudgetedlaborcost numeric(20,4),
    rsplannerbudgetedhours numeric(18,2) DEFAULT 0 NOT NULL
);

CREATE TABLE redrock.t_tasks (
    referencenum numeric,
    name character varying(255) NOT NULL,
    description character varying(4000),
    priority numeric DEFAULT 0 NOT NULL,
    url character varying(500),
    iscritical numeric DEFAULT 0 NOT NULL,
    hasnotes numeric DEFAULT 0 NOT NULL,
    hasdocuments numeric DEFAULT 0 NOT NULL,
    plannedstartdate numeric,
    projectedstartdate numeric,
    eststartdate numeric,
    actualstartdate numeric,
    plannedcompletiondate numeric,
    projectedcompletiondate numeric,
    estcompletiondate numeric,
    actualcompletiondate numeric,
    percentcomplete numeric(10,2) DEFAULT 0 NOT NULL,
    entrydate numeric,
    status character varying(15) DEFAULT 'New'::character varying NOT NULL,
    numberofchildren numeric DEFAULT 0 NOT NULL,
    extrefid character varying(255),
    taskconstraint character varying(5) DEFAULT 'ASAP'::character varying NOT NULL,
    parentlag numeric(10,2) DEFAULT 0 NOT NULL,
    constraintdate numeric,
    trackingmode character varying(5) DEFAULT 'USER'::character varying NOT NULL,
    resourcescope character varying(5) DEFAULT 'NONE'::character varying NOT NULL,
    workrequired numeric DEFAULT 0 NOT NULL,
    originalworkrequired numeric DEFAULT 0 NOT NULL,
    parentlagtype character varying(1) DEFAULT 'd'::character varying NOT NULL,
    tasknumber numeric DEFAULT 0 NOT NULL,
    indent numeric DEFAULT 0 NOT NULL,
    durunit character varying(2) DEFAULT 'D'::character varying NOT NULL,
    durtype character varying(2) DEFAULT 'W'::character varying NOT NULL,
    durminutes numeric DEFAULT 0 NOT NULL,
    originalduration numeric DEFAULT 0 NOT NULL,
    hasresolvable numeric DEFAULT 0 NOT NULL,
    numopenoptasks numeric DEFAULT 0 NOT NULL,
    audittypes numeric DEFAULT 2 NOT NULL,
    completionpendingdate numeric,
    actualwork numeric DEFAULT 0 NOT NULL,
    actualcost numeric(20,4) DEFAULT 0 NOT NULL,
    actualdurminutes numeric DEFAULT 0 NOT NULL,
    plannedcost numeric(20,4) DEFAULT 0 NOT NULL,
    cpi numeric(20,4) DEFAULT 0 NOT NULL,
    spi numeric(20,4) DEFAULT 0 NOT NULL,
    eac numeric(20,4) DEFAULT 0 NOT NULL,
    csi numeric(20,4) DEFAULT 0 NOT NULL,
    progstat character varying(2) DEFAULT 'OT'::character varying NOT NULL,
    hasmsgs numeric DEFAULT 0 NOT NULL,
    handoffdate numeric DEFAULT 0,
    revenuetype character varying(3) DEFAULT 'NOB'::character varying NOT NULL,
    billingamount numeric(20,4) DEFAULT 0 NOT NULL,
    plannedrevenue numeric(20,4) DEFAULT 0 NOT NULL,
    actualrevenue numeric(20,4) DEFAULT 0 NOT NULL,
    costtype character varying(3) DEFAULT 'UHR'::character varying NOT NULL,
    costamount numeric(20,4) DEFAULT 0 NOT NULL,
    lastupdatedate numeric,
    hastimednotifications numeric DEFAULT 0 NOT NULL,
    hasexpenses numeric DEFAULT 0 NOT NULL,
    workperday text,
    workingdays character varying(250),
    olv numeric DEFAULT 0 NOT NULL,
    levelingstartdelay numeric DEFAULT 0 NOT NULL,
    islevelingexcluded numeric DEFAULT 0 NOT NULL,
    wbs character varying(32),
    planneddurminutes numeric DEFAULT 0 NOT NULL,
    recurrencenumber numeric,
    actuallaborcost numeric(20,4) DEFAULT 0 NOT NULL,
    actualexpensecost numeric(20,4) DEFAULT 0 NOT NULL,
    plannedlaborcost numeric(20,4) DEFAULT 0 NOT NULL,
    plannedexpensecost numeric(20,4) DEFAULT 0 NOT NULL,
    previousstatus character varying(6),
    approvalplnstartdate numeric,
    approvalprojstartdate numeric,
    approvaleststartdate numeric,
    commitdate numeric,
    projectedminutes numeric,
    remainingminutes numeric,
    teamguid character varying(32),
    cond numeric,
    slackdate numeric,
    personal numeric DEFAULT 0 NOT NULL,
    statusupdate character varying(4000),
    customerguid character varying(32) NOT NULL,
    mastertaskguid character varying(32),
    templatetaskguid character varying(32),
    assignedtoguid character varying(32),
    enteredbyguid character varying(32),
    lastupdatedbyguid character varying(32),
    submittedbyguid character varying(32),
    groupguid character varying(32) NOT NULL,
    rejectionissueguid character varying(32),
    guid character varying(32) NOT NULL,
    parentguid character varying(32),
    roleguid character varying(32),
    projectguid character varying(32) NOT NULL,
    milestoneguid character varying(32),
    approvalprocessguid character varying(32),
    currentapprovalstepguid character varying(32),
    lastnoteguid character varying(32),
    lastconditionnoteguid character varying(32),
    categoryguid character varying(32),
    billingrecordguid character varying(32),
    reservedtimeguid character varying(32),
    recurrenceruleguid character varying(32),
    canstart numeric DEFAULT 1 NOT NULL,
    isdurationlocked numeric DEFAULT 0 NOT NULL,
    isworkrequiredlocked numeric DEFAULT 0 NOT NULL,
    convertedoptaskownerguid character varying(32),
    convertedoptaskname character varying(255),
    convertedoptaskentrydate numeric,
    exchangerateguid character varying(32),
    isready numeric DEFAULT 0 NOT NULL,
    estimate numeric(20,4) DEFAULT 0 NOT NULL,
    backlogorder numeric DEFAULT 0,
    isagile numeric DEFAULT 0 NOT NULL,
    iterationguid character varying(32),
    color character varying(22),
    securityrootguid character varying(32),
    securityrootobjcode character varying(6),
    hoursperpoint numeric(5,2) DEFAULT 0 NOT NULL,
    actualworkperday text,
    projectedworkingdays character varying(250),
    projectedworkperday text,
    securityancestorsdisabled numeric DEFAULT 0 NOT NULL,
    pendingcalculation numeric,
    pendingupdatemethods character varying(60),
    version numeric DEFAULT 0 NOT NULL,
    originalactualwork numeric DEFAULT 0 NOT NULL,
    storyboardorder numeric(6,0) DEFAULT 0 NOT NULL,
    deleted character(1),
    deletiondate timestamp(3) without time zone,
    recycletoken character varying(32),
    approvalstartdate numeric,
    approvalcompletiondate numeric,
    convertedoptaskguid character varying(32),
    kanbanboardguid character varying(32),
    workflowautomationguid character varying(32),
    kanbanflag character varying(250),
    bcws numeric(20,4),
    bcwp numeric(20,4),
    durationmillis numeric DEFAULT 0 NOT NULL,
    workrequiredmillis numeric DEFAULT 0 NOT NULL,
    actualworkmillis numeric DEFAULT 0 NOT NULL,
    originalactualworkmillis numeric DEFAULT 0 NOT NULL,
    originaldurationmillis numeric DEFAULT 0 NOT NULL,
    originalworkrequiredmillis numeric DEFAULT 0 NOT NULL,
    storypoints numeric,
    actualworkdouble numeric(20,4) DEFAULT 0 NOT NULL,
    originalactualworkdouble numeric(20,4) DEFAULT 0 NOT NULL,
    workeffort numeric
);

