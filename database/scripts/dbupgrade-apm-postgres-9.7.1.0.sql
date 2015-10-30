--DROP TABLE IF EXISTS
--        appmap_id_mappings,
--        appmap_vertices, 
--        appmap_edges,
--        appmap_intelli_senses,
--        appmap_settings CASCADE;

CREATE TABLE appmap_id_mappings (
        vertex_id INTEGER PRIMARY KEY,
        external_id VARCHAR(1024) NOT NULL,
        type CHAR NOT NULL
);

CREATE TABLE appmap_vertices (
        vertex_id INTEGER NOT NULL,
        start_time TIMESTAMP NOT NULL,
        end_time TIMESTAMP NOT NULL,
        vertex_name VARCHAR(256),
        business_service VARCHAR(256),
        application_id VARCHAR(256),
        search_attrib1 VARCHAR(256),
	    search_attrib2 VARCHAR(256),
	    search_attrib3 VARCHAR(256),
	    search_attrib4 VARCHAR(256),
	    search_attrib5 VARCHAR(256),
        gathered_attribs TEXT,
        other_attribs TEXT,
        PRIMARY KEY(vertex_id, start_time)
);

CREATE TABLE appmap_edges (
        source_id INTEGER NOT NULL,
        target_id INTEGER NOT NULL,
        transaction_id INTEGER,
        start_time TIMESTAMP NOT NULL,
        end_time TIMESTAMP NOT NULL,
        PRIMARY KEY(transaction_id, start_time, source_id, target_id)
);

CREATE TABLE appmap_intelli_senses (
    attrib_name VARCHAR(256) NOT NULL,
    attrib_value VARCHAR(256),
    count INTEGER,
    PRIMARY KEY(attrib_name, attrib_value)
);

CREATE TABLE appmap_settings (
        id INTEGER NOT NULL,
        user_id INTEGER,
        type INTEGER NOT NULL,
        data TEXT,
        created_at TIMESTAMP NOT NULL,
        updated_at TIMESTAMP NOT NULL,
        deleted_at TIMESTAMP,
        PRIMARY KEY(id)
);


alter table appmap_vertices
    add constraint appmap_vertices_fk
    foreign key (vertex_id)
    references appmap_id_mappings on delete cascade;    

alter table appmap_edges
    add constraint appmap_transactions_fk1
    foreign key (source_id)
    references appmap_id_mappings on delete cascade;    

alter table appmap_edges
    add constraint appmap_transactions_fk2
    foreign key (target_id)
    references appmap_id_mappings on delete cascade;    

alter table appmap_edges
    add constraint appmap_transactions_fk3
    foreign key (transaction_id)
    references appmap_id_mappings on delete cascade;    

CREATE UNIQUE INDEX appmap_id_mappings_idx ON appmap_id_mappings(type, external_id);
CREATE INDEX appmap_vertices_time_idx ON appmap_vertices(end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_service_idx ON appmap_vertices(business_service, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_app_idx ON appmap_vertices(application_id, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib1_idx ON appmap_vertices(search_attrib1, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib2_idx ON appmap_vertices(search_attrib2, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib3_idx ON appmap_vertices(search_attrib3, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib4_idx ON appmap_vertices(search_attrib4, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib5_idx ON appmap_vertices(search_attrib5, end_time DESC, start_time, vertex_id);
CREATE INDEX appmap_vertices_attrib_lookup ON appmap_vertices
   (vertex_id, start_time, application_id, search_attrib1, search_attrib2, search_attrib3, search_attrib4, search_attrib5, business_service);

CREATE UNIQUE INDEX appmap_edges_idx ON appmap_edges(end_time, start_time, source_id, target_id, transaction_id);
        
CREATE INDEX appmap_edges_fk1_idx ON appmap_edges(source_id);
CREATE INDEX appmap_edges_fk2_idx ON appmap_edges(target_id);
CREATE INDEX appmap_edges_fk3_idx ON appmap_edges(transaction_id);

CREATE INDEX appmap_settings_user_id_idx ON appmap_settings(user_id);
CREATE INDEX appmap_settings_type_idx ON appmap_settings(type, deleted_at);

CREATE SEQUENCE sq_appmap_vertices MINVALUE 1;
ALTER SEQUENCE sq_appmap_vertices owned by appmap_id_mappings.vertex_id;

CREATE SEQUENCE seq_appmap_settings MINVALUE 1;
ALTER SEQUENCE seq_appmap_settings owned by appmap_settings.id;


SELECT setval('sq_appmap_vertices', (select max(vertex_id) from appmap_id_mappings));

alter table appmap_intelli_senses  alter column count set default 0;

INSERT INTO appmap_id_mappings (vertex_id, external_id, type)
    SELECT 0, 'CA_APM_INTERNAL', 'V' WHERE NOT EXISTS(SELECT 1 FROM appmap_id_mappings WHERE vertex_id = 0);
    
INSERT INTO appmap_vertices (vertex_id, start_time, end_time, business_service)
    SELECT 0, TIMESTAMP '1979-1-1 0:0:0', TIMESTAMP '1979-1-1 0:0:0', 'CA_APM_INTERNAL' WHERE NOT EXISTS(SELECT 1 FROM appmap_vertices WHERE vertex_id = 0);    
