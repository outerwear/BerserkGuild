local _, BS = ...

-- Alchemy map
Alchemy = {
    categories = {
        'Flasks',
        'Elixirs',
        'Resistance Potions',
        'Miscellaneous'
    },
    flask = {
        distilledwisdom = {
            'Distilled Wisdom',
            {'Shamattack', 'Lillybell', 'Itches', 'Abathur'}
        },
        supremepower = {
            'Supreme Power',
            {'Shamattack', 'Lillybell', 'Itches'}
        },
        titans = {
            'Titans',
            {'Itches'}
        }
    },
    elixir = {
        mongoose = {
            'Mongoose',
            {'Shamattack', 'Lillybell', 'Itches', 'Abathur'}
        },
        giants = {
            'Giants',
            {'Shamattack', 'Lillybell', 'Itches'}
        },
        greaterarcane = {
            'Greater Arcane',
            {'Lillybell', 'Itches'}
        },
        greaterfirepower = {
            'Greater Fire Power',
            {'Lillybell', 'Itches', 'Abathur'}
        },
        shadowpower = {
            'Shadow Power',
            {'Lillybell', 'Itches', 'Abathur'}
        },
        frostpower = {
            'Frost Power',
            {'Lillybell', 'Itches'}
        },
        bruteforce = {
            'Brute Force',
            {'Itches'}
        }
    }, 
    resistance = {
        greaterfire = {
            'Greater Fire Resist',
            {'Shamattack', 'Lillybell', 'Itches'}
        },
        greaterfrost = {
            'Greater Frost Resist',
            {'Shamattack', 'Lillybell', 'Itches', 'Abathur'}
        },
        greatershadow = {
            'Greater Shadow Resist',
            {'Lillybell', 'Itches', 'Abathur'}
        },
        greaternature = {
            'Greater Nature Resist',
            {'Shamattack', 'Lillybell', 'Itches', 'Abathur'}
        },
        greaterarcane = {
            'Greater Arcane Resist',
            {'Lillybell', 'Itches', 'Abathur'}
        }
    },
    miscellaneous = {
        mightyrage = {
            'Mighty Rage Potion',
            {'Itches'}
        }
    },
}

function Alchemy:parseSlot(slot)
    if slot == 'f' or string.find(slot, "flask") ~= nil then
        return 'flask';
    elseif slot == 'e' or string.find(slot, "elixir") ~= nil then
        return 'elixir';
    elseif slot == 'r' or string.find(slot, "resist") ~= nil then
        return 'resistance';
    elseif slot == 'm' or string.find(slot, "misc") ~= nil then
        return 'miscellaneous';
    else
        return '';
    end
end

function Alchemy:parseCaty(a)
    if string.find(a, "wisdom") ~= nil then
        return 'distilledwisdom';
    elseif string.find(a, "supreme") ~= nil then
        return 'supremepower';
    elseif string.find(a, "titan") ~= nil then
        return 'titans';
    elseif string.find(a, "mongoose") ~= nil then
        return 'mongoose';
    elseif string.find(a, "giant") ~= nil then
        return 'giants';
    elseif string.find(a, "arcane") ~= nil then
        return 'greaterarcane';
    elseif string.find(a, "firepower") ~= nil then
        return 'firepower';
    elseif string.find(a, "frostpower") ~= nil then
        return 'frostpower';
    elseif string.find(a, "shadowpower") ~= nil then
        return 'shadowpower';
    elseif string.find(a, "brute") ~= nil then
        return 'bruteforce';
    elseif string.find(a, "fire") ~= nil then
        return 'greaterfire';
    elseif string.find(a, "frost") ~= nil then
        return 'greaterfrost';
    elseif string.find(a, "shadow") ~= nil then
        return 'greatershadow';
    elseif string.find(a, "nature") ~= nil then
        return 'greaternature';
    elseif string.find(a, "rage") ~= nil then
        return 'mightyrage';
    elseif string.find(a, "all") ~= nil then
        return 'all';
    else
        return '';
    end
end
