export const functionSchema = [
  {
    $schema: "http://json-schema.org/draft-07/schema#",
    type: "object",
    properties: {
      name: {
        type: "string",
      },
      description: {
        type: "string",
      },
      parameters: {
        type: "object",
        properties: {
          personalBrandPositioning: {
            type: "object",
            properties: {
              statement: {
                type: "string",
                description: "The personalized brand positioning statement.",
              },
              uniqueValueProposition: {
                type: "string",
                description: "The individual's unique value proposition.",
              },
            },
            required: ["statement", "uniqueValueProposition"],
            additionalProperties: false,
            description: "Personal brand positioning details",
          },
          contentStrategy: {
            type: "object",
            properties: {
              contentTypes: {
                type: "array",
                items: {
                  type: "string",
                  description: "Content types recommended for the individual.",
                },
              },
              contentCalendar: {
                type: "string",
                description:
                  "A suggested content calendar to maintain consistency and engagement.",
              },
            },
            required: ["contentTypes", "contentCalendar"],
            additionalProperties: false,
            description: "Content strategy details",
          },
          onlinePresence: {
            type: "object",
            properties: {
              socialMediaPlatforms: {
                type: "array",
                items: {
                  type: "string",
                  description:
                    "Social media platforms recommended for the individual.",
                },
              },
              profileOptimizationTips: {
                type: "string",
                description:
                  "Tips for optimizing online profiles to maintain a consistent personal brand image.",
              },
            },
            required: ["socialMediaPlatforms", "profileOptimizationTips"],
            additionalProperties: false,
            description: "Online presence details",
          },
          networkingAndCollaboration: {
            type: "object",
            properties: {
              networkingEvents: {
                type: "array",
                items: {
                  type: "string",
                  description:
                    "Networking events or conferences recommended for the individual.",
                },
              },
              collaborationIdeas: {
                type: "string",
                description:
                  "Ideas for collaborating with other professionals in the industry.",
              },
            },
            required: ["networkingEvents", "collaborationIdeas"],
            additionalProperties: false,
            description: "Networking and collaboration details",
          },
        },
        required: [
          "personalBrandPositioning",
          "contentStrategy",
          "onlinePresence",
          "networkingAndCollaboration",
        ],
        additionalProperties: false,
        description:
          "Parameters for generating a personal brand building strategy",
      },
    },
    required: ["name", "description", "parameters"],
  },
];
