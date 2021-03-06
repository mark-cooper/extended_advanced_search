require_relative 'linked_agent_fields'

# Text fields
AdvancedSearch.define_field(:name => 'agents', :type => :text, :visibility => [:staff], :solr_field => 'agents_text')
AdvancedSearch.define_field(:name => 'created_by', :type => :text, :visibility => [:staff], :solr_field => 'created_by')
AdvancedSearch.define_field(:name => 'last_modified_by', :type => :text, :visibility => [:staff], :solr_field => 'last_modified_by')
AdvancedSearch.define_field(:name => 'accession_id_0', :type => :text, :visibility => [:staff], :solr_field => 'accession_id_0_u_ustr')
AdvancedSearch.define_field(:name => 'accession_id_1', :type => :text, :visibility => [:staff], :solr_field => 'accession_id_1_u_ustr')
AdvancedSearch.define_field(:name => 'accession_content_description', :type => :text, :visibility => [:staff], :solr_field => 'accession_content_description_u_utext')
AdvancedSearch.define_field(:name => 'accession_condition_description', :type => :text, :visibility => [:staff], :solr_field => 'accession_condition_description_u_utext')
AdvancedSearch.define_field(:name => 'accession_inventory', :type => :text, :visibility => [:staff], :solr_field => 'accession_inventory_u_utext')
AdvancedSearch.define_field(:name => 'accession_provenance', :type => :text, :visibility => [:staff], :solr_field => 'accession_provenance_u_utext')
AdvancedSearch.define_field(:name => 'accession_general_note', :type => :text, :visibility => [:staff], :solr_field => 'accession_general_note_u_utext')
AdvancedSearch.define_field(:name => 'extent_number', :type => :text, :visibility => [:staff], :solr_field => 'extent_number_u_ustr')
AdvancedSearch.define_field(:name => 'extent_container_summary', :type => :text, :visibility => [:staff], :solr_field => 'extent_container_summary_u_utext')
AdvancedSearch.define_field(:name => 'extent_physical_details', :type => :text, :visibility => [:staff], :solr_field => 'extent_physical_details_u_utext')
AdvancedSearch.define_field(:name => 'user_defined_string_3', :type => :text, :visibility => [:staff], :solr_field => 'string_3_u_utext')
AdvancedSearch.define_field(:name => 'user_defined_text_1', :type => :text, :visibility => [:staff], :solr_field => 'text_1_u_utext')
AdvancedSearch.define_field(:name => 'user_defined_text_2', :type => :text, :visibility => [:staff], :solr_field => 'text_2_u_utext')
AdvancedSearch.define_field(:name => 'user_defined_text_3', :type => :text, :visibility => [:staff], :solr_field => 'text_3_u_utext')
AdvancedSearch.define_field(:name => 'user_defined_text_4', :type => :text, :visibility => [:staff], :solr_field => 'text_4_u_utext')
AdvancedSearch.define_field(:name => 'user_defined_text_5', :type => :text, :visibility => [:staff], :solr_field => 'text_5_u_utext')
AdvancedSearch.define_field(:name => 'collection_management_processors', :type => :text, :visibility => [:staff], :solr_field => 'collection_management_processors_u_utext')
AdvancedSearch.define_field(:name => 'accession_title', :type => :text, :visibility => [:staff], :solr_field => 'accession_title_u_utext')
AdvancedSearch.define_field(:name => 'archival_object_title', :type => :text, :visibility => [:staff], :solr_field => 'archival_object_title_u_utext')

LinkedAgentFields::LINKED_AGENT_INDEXED_ROLES.each do |role|
  AdvancedSearch.define_field(:name => "agents_#{role}_role", :type => :text, :visibility => [:staff], :solr_field => "agents_text_#{role}_role_u_utext")
end

# Booleans
AdvancedSearch.define_field(:name => 'access_restrictions', :type => :boolean, :visibility => [:staff], :solr_field => 'access_restrictions')
AdvancedSearch.define_field(:name => 'use_restrictions', :type => :boolean, :visibility => [:staff], :solr_field => 'use_restrictions')
AdvancedSearch.define_field(:name => 'has_external_documents', :type => :boolean, :visibility => [:staff], :solr_field => 'has_external_documents_u_ubool')
AdvancedSearch.define_field(:name => 'has_rights_statements', :type => :boolean, :visibility => [:staff], :solr_field => 'has_rights_statements_u_ubool')
AdvancedSearch.define_field(:name => 'user_defined_boolean_1', :type => :boolean, :visibility => [:staff], :solr_field => 'boolean_1_u_ubool')
AdvancedSearch.define_field(:name => 'user_defined_boolean_2', :type => :boolean, :visibility => [:staff], :solr_field => 'boolean_2_u_ubool')

# Dates
AdvancedSearch.define_field(:name => 'date_begin', :type => :date, :visibility => [:staff], :solr_field => 'date_begin_u_udate')
AdvancedSearch.define_field(:name => 'date_end', :type => :date, :visibility => [:staff], :solr_field => 'date_end_u_udate')
AdvancedSearch.define_field(:name => 'accession_date', :type => :date, :visibility => [:staff], :solr_field => 'accession_date_u_udate')
AdvancedSearch.define_field(:name => 'event_begin', :type => :date, :visibility => [:staff], :solr_field => 'event_begin_u_udate')
AdvancedSearch.define_field(:name => 'event_end', :type => :date, :visibility => [:staff], :solr_field => 'event_end_u_udate')
AdvancedSearch.define_field(:name => 'user_defined_date_2', :type => :date, :visibility => [:staff], :solr_field => 'date_2_u_udate')

# Enums
AdvancedSearch.define_field(:name => 'accession_acquisition_type', :type => :enum, :visibility => [:staff], :solr_field => 'acquisition_type')
AdvancedSearch.define_field(:name => 'extent_extent_type', :type => :enum, :visibility => [:staff], :solr_field => 'extent_type_u_ustr')
AdvancedSearch.define_field(:name => 'user_defined_enum_2', :type => :enum, :visibility => [:staff], :solr_field => 'enum_2_u_ustr')
AdvancedSearch.define_field(:name => 'linked_agent_role', :type => :enum, :visibility => [:staff], :solr_field => 'agent_roles_u_ustr')
AdvancedSearch.define_field(:name => 'collection_management_processing_priority', :type => :enum, :visibility => [:staff], :solr_field => 'collection_management_processing_priority_u_ustr')
AdvancedSearch.define_field(:name => 'collection_management_processing_status', :type => :enum, :visibility => [:staff], :solr_field => 'collection_management_processing_status_u_ustr')
AdvancedSearch.define_field(:name => 'event_event_type', :type => :enum, :visibility => [:staff], :solr_field => 'event_type_u_ustr')
AdvancedSearch.define_field(:name => 'event_outcome', :type => :enum, :visibility => [:staff], :solr_field => 'event_outcome_u_ustr')
